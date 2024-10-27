<table>
  <tr>
    <th>Torneo</th>
    <th>Pros</th>
    <th>Contras</th>
  </tr>
  {
    for $torneo in doc("torneos_instanciado.xml")//torneo[modalidades/modalidad = "Eliminatoria"]
    return
      <tr>
        <td>{data($torneo/nombre)}</td>
        <td>{data($torneo/pros)}</td>
        <td>{data($torneo/contras)}</td>
      </tr>
  }
</table>