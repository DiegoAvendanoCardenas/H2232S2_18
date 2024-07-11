import { Router } from "express";
import {
  createPatient,
  renderPatients,
  renderAboutPage, 
} from "../controllers/PacienteController.js";
const router = Router();

// Nueva ruta para la página "Nosotros"
router.get('/nosotros', renderAboutPage);

router.get("/", renderPatients);
router.post("/add", createPatient);

export default router;
