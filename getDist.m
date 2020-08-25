function [p_r, p_f, Ff, Fr] = getDist(n_front, n_rear, m_occupant, m_luggage, mass_min,...
    FR, CG, RR, LUGGAGE, wheelbase)
Fr = (n_front*m_occupant*FR + mass_min*CG + n_rear*m_occupant*RR + (n_front+n_rear)*m_luggage*LUGGAGE)*9.81/wheelbase;
Ff = ((n_front + n_rear)*(m_occupant + m_luggage) + mass_min)*9.81 - Fr;
p_f = Ff/(Ff + Fr);
p_r = Fr/(Ff + Fr);

