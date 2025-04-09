from odoo import models, fields, api
import base64
import io
import PyPDF2

class OnboardingOffboarding(models.Model):
    _name = "onboarding.offboarding"
    _description = "Onboarding & Offboarding"

    name = fields.Char(string="Nom", required=True)

class HrEmployee(models.Model):
    _inherit = 'hr.employee'
    age = fields.Integer(string="Age")
    birthday = fields.Date(string="Date de naissance")

    @api.onchange('birthday')
    def test(self):
        # On va récupérer les mots-clés depuis x_skills (many2many), x_experience (text), et x_keyword (text)
        keywords = []
        jobs = self.env['hr.job'].search([])
        for n in jobs:
            print(n)
            print(n.x_experience)
            print(n.x_keyword)
            print(n.x_skills)
        '''for job in jobs:
            # Récupérer les noms des skills
            if job.x_skills:
                skills = job.x_skills.mapped('name')
                keywords += skills
                print(keywords)

            # Ajouter les mots-clés de x_experience s'ils existent
            if job.x_experience:
                experience_keywords = [x.strip() for x in job.x_experience.split(',')]
                keywords += experience_keywords
                print(keywords)
            # Ajouter les mots-clés de x_keyword s'ils existent
            if job.x_keyword:
                keyword_list = [x.strip() for x in job.x_keyword.split(',')]
                keywords += keyword_list
                print(keywords)
        # Nettoyage final : suppression des doublons et conversion en minuscule
        keywords = list(set([kw.lower() for kw in keywords if kw]))
        print("Mots-clés extraits de la base de données :", keywords)'''


class HrSkill(models.Model):
    _name = 'hr.skill'
    _description = 'Skill'

    name = fields.Char(string="Skill Name", required=True)
    description = fields.Text(string="Description")
class HrExperience(models.Model):
    _name = 'hr.experience'
    _description = 'Experience'

    name = fields.Char(string="Experience", required=True)
    description = fields.Text(string="Description")
class HrKeyWords(models.Model):
    _name = 'hr.keywords'
    _description = 'Keywords'

    name = fields.Char(string="Key Words", required=True)
    description = fields.Text(string="Description")

class HrJob(models.Model):
    _inherit = 'hr.job'
    x_experience = fields.Many2many('hr.experience',string="Expérience")
    x_keyword = fields.Many2many('hr.keywords',string="Mots Clés")
    x_skills=fields.Many2many('hr.skill',string='Compétences', required=True)

class CandidateCV(models.Model):
    _name = "hr.candidate.cv"
    _description = "CV des cand idats"
    # Changement : name lié à hr.applicant au lieu de hr.employee
    name = fields.Many2one('hr.applicant', string="Nom du candidat", )
    job_id = fields.Many2one('hr.job', string="Poste visé", required=True, ondelete='cascade')
    cv_file = fields.Binary(string="CV (PDF)")
    cv_filename = fields.Char(string="CV du candidat")
    application_date = fields.Date(string="Date de postulation", default=fields.Date.today)
    departement = fields.Many2many('hr.department',string="Département", required=True)
    extracted_text = fields.Text(string="Extracted CV Text")
    ats_score = fields.Float(string="Score ATS", store=True)

    '''@api.model
    def create(self, vals):
        print("create")
        """ Lors de la création d'un CV, on calcule le score ATS """
        res = super(CandidateCV, self).create(vals)

        if res.cv_file:
            res.ats_score = res._calculate_ats_score()
        return res'''

    @api.onchange('cv_file')
    def _onchange_cv_file(self):
        print ("wslet")
        if self.cv_file:

            self.ats_score = self._calculate_ats_score()
        else:
            self.ats_score=0.0
    def _extract_text_from_pdf(self,binary_data):
        text = ""
        if binary_data:
            try:
                pdf_file = io.BytesIO(base64.b64decode(binary_data))
                reader = PyPDF2.PdfReader(pdf_file)
                for page in reader.pages:
                    page_text = page.extract_text()
                    if page_text:
                        text += page_text + "\n"
            except Exception as e:
                text = ""
        return text.lower()

    def _calculate_ats_score(self):
        job_keywords = self.env['hr.job'].search([]).mapped('name')  # Liste des noms de poste
        text = self._extract_text_from_pdf(self.cv_file).lower()
        match_count = sum(1 for keyword in job_keywords if keyword.lower() in text)
        score = (match_count / len(job_keywords)) * 100 if job_keywords else 0
        return round(score, 2)

class EmployeeMaterial(models.Model):
    _name = 'employee.material'
    _description = 'Employee Materials'

    employee_id = fields.Many2one('hr.employee', string='Employee', required=True, ondelete='cascade')
    material_name = fields.Char(string='Material Name', required=True)
    description = fields.Text(string='Description')
    date_assigned = fields.Date(string='Date Assigned', default=fields.Date.today)
    # Add other relevant fields like quantity, serial number, etc.


class EmployeeAccess(models.Model):
    _name = 'employee.access'
    _description = 'Employee Access'

    employee_id = fields.Many2one('hr.employee', string='Employee', required=True, ondelete='cascade')
    access_for = fields.Char(string='Access for', required=True)
    description = fields.Text(string='Description')

