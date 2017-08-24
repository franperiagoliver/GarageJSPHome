package com.everis.alicante.becajava.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.everis.alicante.becajava.domain.Booking;
import com.everis.alicante.becajava.domain.Client;
import com.everis.alicante.becajava.domain.Parkingplace;
import com.everis.alicante.becajava.domain.Vehicle;
import com.everis.alicante.becajava.garage.controller.ControladorGaraje;
import com.everis.alicante.becajava.garage.controller.ControladorGarajeImpl;

public class Dispatcher extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int option = Integer.parseInt(req.getParameter("option"));

		System.out.println("##option" + option);

		ControladorGaraje controlador = new ControladorGarajeImpl();

		switch (option) {
		case 1:
			List<Parkingplace> plazas = controlador.listarPlazasLibres();
			req.setAttribute("plazas", plazas);
			RequestDispatcher dispatcher = req.getRequestDispatcher("parkingplace/listadoPlazas.jsp");
			dispatcher.forward(req, resp);
			break;
		case 2:
			List<Parkingplace> plazasOcupadas = controlador.listarPlazasOcupadas();
			req.setAttribute("plazas", plazasOcupadas);
			RequestDispatcher dispatcher2 = req.getRequestDispatcher("parkingplace/listadoPlazasOcupadas.jsp");
			dispatcher2.forward(req, resp);
			break;
		case 3:
			List<Parkingplace> plazasLibres = controlador.listarPlazasLibres();
			List<String> coches = new ArrayList<>();
			coches.add("Abarath".toUpperCase());
			coches.add("Alfa Romeo".toUpperCase());
			coches.add("Aston Martin".toUpperCase());
			coches.add("Audi".toUpperCase());
			coches.add("Bentley".toUpperCase());
			coches.add("BMW");
			coches.add("Cadillac".toUpperCase());
			coches.add("Caterham".toUpperCase());
			coches.add("Chevrolet".toUpperCase());
			coches.add("Citröen".toUpperCase());
			coches.add("Dacia".toUpperCase());
			coches.add("Ferrari".toUpperCase());
			coches.add("Fiat".toUpperCase());
			coches.add("Ford".toUpperCase());
			coches.add("Honda".toUpperCase());
			coches.add("Infinity".toUpperCase());
			coches.add("Isuzu".toUpperCase());
			coches.add("Iveco".toUpperCase());
			coches.add("Jaguar".toUpperCase());
			coches.add("Jeep".toUpperCase());
			coches.add("Kia".toUpperCase());
			coches.add("KTM".toUpperCase());
			coches.add("Lada".toUpperCase());
			coches.add("Lamborghini".toUpperCase());
			coches.add("Lancia".toUpperCase());
			coches.add("Land Rover".toUpperCase());
			coches.add("Lexus".toUpperCase());
			coches.add("Lotus".toUpperCase());
			coches.add("Maserati".toUpperCase());
			coches.add("Mazda".toUpperCase());
			coches.add("Mercedes-Benz".toUpperCase());
			coches.add("Mini".toUpperCase());
			coches.add("Mitsubishi".toUpperCase());
			coches.add("Morgan".toUpperCase());
			coches.add("Nissan".toUpperCase());
			coches.add("Opel".toUpperCase());
			coches.add("Peugeot".toUpperCase());
			coches.add("Piaggio".toUpperCase());
			coches.add("Porsche".toUpperCase());
			coches.add("Renault".toUpperCase());
			coches.add("Rolls-Royce".toUpperCase());
			coches.add("Seat".toUpperCase());
			coches.add("Skoda".toUpperCase());
			coches.add("Smart".toUpperCase());
			coches.add("SsangYong".toUpperCase());
			coches.add("Subaru".toUpperCase());
			coches.add("Suzuki".toUpperCase());
			coches.add("Tata".toUpperCase());
			coches.add("Tesla".toUpperCase());
			coches.add("Toyota".toUpperCase());
			coches.add("Volkswagen".toUpperCase());
			coches.add("Volvo".toUpperCase());
			coches.add("Otro".toUpperCase());
			req.setAttribute("coches", coches);
			req.setAttribute("plazas", plazasLibres);
			RequestDispatcher dispatcher3 = req.getRequestDispatcher("booking/altaReserva.jsp");
			dispatcher3.forward(req, resp);
			break;
		case 4:
			List<Client> clientes = controlador.listarClientes();
			req.setAttribute("clientes", clientes);
			RequestDispatcher dispatcher4 = req.getRequestDispatcher("client/listadoClientes.jsp");
			dispatcher4.forward(req, resp);
			break;
		case 5:
			List<Booking> reservas = controlador.listarReservas();
			req.setAttribute("reservas", reservas);
			RequestDispatcher dispatcher5 = req.getRequestDispatcher("booking/listadoReservas.jsp");
			dispatcher5.forward(req, resp);
			break;
		case 6:
			List<Vehicle> vehiculos = controlador.listarVehiculos();
			req.setAttribute("vehiculos", vehiculos);
			RequestDispatcher dispatcher6 = req.getRequestDispatcher("vehicle/listadoVehiculos.jsp");
			dispatcher6.forward(req, resp);
			break;
		case 7:
			// List<Booking> reservasFecha = controlador.listarReservasByFecha();
			// req.setAttribute("reservasFecha", reservasFecha);
			resp.sendRedirect("booking/formularioFechasReservas.jsp");
			break;
		case 8:
			req.setAttribute("reserva", controlador.listarReservasById(Integer.valueOf(req.getParameter("id"))));
			RequestDispatcher dispatcher8 = req.getRequestDispatcher("booking/modificarReserva.jsp");
			dispatcher8.forward(req, resp);
			break;
		case 9:
			req.setAttribute("cliente", controlador.listarClientesById(Integer.valueOf(req.getParameter("id"))));
			RequestDispatcher dispatcher9 = req.getRequestDispatcher("client/modificarCliente.jsp");
			dispatcher9.forward(req, resp);
			break;
		default:
			break;
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

}
