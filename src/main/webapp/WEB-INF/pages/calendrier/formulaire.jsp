		<table>
			<tbody>
				<tr>
					<td>Titre</td>
					<td><input type="text" id="libelle" name="libelle" placeholder="${evenement.libelle }" required></td>
				</tr>
				<tr>
					<td>Début</td>
					<td><input type="date" id="dateDebut" class="date" name="dateDebut" placeholder="${evenement.dateDebut }" required></td>
				</tr>
				<tr>
					<td>De</td>
					<td><select type="text" id="heureDebut" name="heureDebut">
						  <option value="00">00</option>
						  <option value="01">01</option>
						  <option value="02">02</option>
						  <option value="03">03</option>
						  <option value="04">04</option>
						  <option value="05">05</option>
						  <option value="06">06</option>
						  <option value="07">07</option>
						  <option value="08">08</option>
						  <option value="09">09</option>
						  <option value="10">10</option>
						  <option value="11">11</option>
						  <option value="12">12</option>
						  <option value="13">13</option>
						  <option value="14">14</option>
						  <option value="15">15</option>
						  <option value="16">16</option>
						  <option value="17">17</option>
						  <option value="18">18</option>
						  <option value="19">19</option>
						  <option value="20">20</option>
						  <option value="21">21</option>
						  <option value="22">22</option>
						  <option value="23">23</option>
						</select>
						:
						<select type="text" id="minuteDebut" name="minuteDebut">
						  <option value="00">00</option>
						  <option value="05">05</option>
						  <option value="10">10</option>
						  <option value="15">15</option>
						  <option value="20">20</option>
						  <option value="25">25</option>
						  <option value="30">30</option>
						  <option value="35">35</option>
						  <option value="40">40</option>
						  <option value="45">45</option>
						  <option value="50">50</option>
						  <option value="55">55</option>
						</select>
						</td>
				</tr>
				<tr>
					<td>Fin</td>
					<td><input type="date" id="dateFin" class="date" name="dateFin" placeholder="${evenement.dateFin }" required></td>
				</tr>
				<tr>
					<td>À</td>
					<td><select type="text" id="heureFin" name="heureFin">
						  <option value="00">00</option>
						  <option value="01">01</option>
						  <option value="02">02</option>
						  <option value="03">03</option>
						  <option value="04">04</option>
						  <option value="05">05</option>
						  <option value="06">06</option>
						  <option value="07">07</option>
						  <option value="08">08</option>
						  <option value="09">09</option>
						  <option value="10">10</option>
						  <option value="11">11</option>
						  <option value="12">12</option>
						  <option value="13">13</option>
						  <option value="14">14</option>
						  <option value="15">15</option>
						  <option value="16">16</option>
						  <option value="17">17</option>
						  <option value="18">18</option>
						  <option value="19">19</option>
						  <option value="20">20</option>
						  <option value="21">21</option>
						  <option value="22">22</option>
						  <option value="23">23</option>
						</select>
						:
						<select type="text" id="minuteFin" name="minuteFin">
						  <option value="00">00</option>
						  <option value="05">05</option>
						  <option value="10">10</option>
						  <option value="15">15</option>
						  <option value="20">20</option>
						  <option value="25">25</option>
						  <option value="30">30</option>
						  <option value="35">35</option>
						  <option value="40">40</option>
						  <option value="45">45</option>
						  <option value="50">50</option>
						  <option value="55">55</option>
						</select></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Enregistrer"></td>
				</tr>
			</tbody>
		</table>