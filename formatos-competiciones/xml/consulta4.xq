<table>
  <tr>
    <th>Torneo</th>
    <th>Modalidades</th>
    <th>Cantidad de Equipos</th>
    <th>Pros</th>
    <th>Contras</th>
  </tr>
  {
    for $torneo in doc("torneos_instanciado.xml")//torneo[contains(nombre, 'z')]
    return
      <tr>
        <td>{data($torneo/nombre)}</td>
        <td>{string-join($torneo/modalidades/modalidad, ', ')}</td>
        <td>{data($torneo/cantidad_equipos)}</td>
        <td>{data($torneo/pros)}</td>
        <td>{data($torneo/contras)}</td>
      </tr>
  }
</table>
