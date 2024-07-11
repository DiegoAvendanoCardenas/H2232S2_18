import { pool } from "../db.js";

export const renderPatients = async (req, res) => {
  const [rows] = await pool.query("SELECT * FROM reservas");
  res.render("patients", { patients: rows });
};

export const createPatient = async (req, res) => {
  const newPatient = req.body;
  await pool.query("INSERT INTO reservas SET ?", [newPatient]);
  res.redirect("/");
};

export const renderAboutPage = (req, res) => {
  res.render('nosotros'); // Renderiza la vista 'nosotros.ejs'
};