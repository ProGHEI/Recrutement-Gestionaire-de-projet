		<table>
			<tbody>
				<tr>
					<td>Titre</td>
					<td><input type="text" id="libelle" name="libelle" value="${evenement.libelle }" required></td>
				</tr>
				<tr>
					<td>Début</td>
					<td><input type="date" id="dateDebut" class="date" name="dateDebut" value="${evenement.dateDebut }" required></td>
				</tr>
				<tr>
					<td>De</td>
					<td><select type="text" id="heureDebut" name="heureDebut"}">
						 <option ${evenement.heureDebut == "00" ? 'selected' : '' } value="00">00</option>
						 <option ${evenement.heureDebut == "01" ? 'selected' : '' } value="01">01</option>
						 <option ${evenement.heureDebut == "02" ? 'selected' : '' } value="02">02</option>
						 <option ${evenement.heureDebut == "03" ? 'selected' : '' } value="03">03</option>
						 <option ${evenement.heureDebut == "04" ? 'selected' : '' } value="04">04</option>
						 <option ${evenement.heureDebut == "05" ? 'selected' : '' } value="05">05</option>
						 <option ${evenement.heureDebut == "06" ? 'selected' : '' } value="06">06</option>
						 <option ${evenement.heureDebut == "07" ? 'selected' : '' } value="07">07</option>
						 <option ${evenement.heureDebut == "08" ? 'selected' : '' } value="08">08</option>
						 <option ${evenement.heureDebut == "09" ? 'selected' : '' } value="09">09</option>
						 <option ${evenement.heureDebut == "10" ? 'selected' : '' } value="10">10</option>
						 <option ${evenement.heureDebut == "11" ? 'selected' : '' } value="11">11</option>
						 <option ${evenement.heureDebut == "12" ? 'selected' : '' } value="12">12</option>
						 <option ${evenement.heureDebut == "13" ? 'selected' : '' } value="13">13</option>
						 <option ${evenement.heureDebut == "14" ? 'selected' : '' } value="14">14</option>
						 <option ${evenement.heureDebut == "15" ? 'selected' : '' } value="15">15</option>
						 <option ${evenement.heureDebut == "16" ? 'selected' : '' } value="16">16</option>
						 <option ${evenement.heureDebut == "17" ? 'selected' : '' } value="17">17</option>
						 <option ${evenement.heureDebut == "18" ? 'selected' : '' } value="18">18</option>
						 <option ${evenement.heureDebut == "19" ? 'selected' : '' } value="19">19</option>
						 <option ${evenement.heureDebut == "20" ? 'selected' : '' } value="20">20</option>
						 <option ${evenement.heureDebut == "21" ? 'selected' : '' } value="21">21</option>
						 <option ${evenement.heureDebut == "22" ? 'selected' : '' } value="22">22</option>
						 <option ${evenement.heureDebut == "23" ? 'selected' : '' } value="23">23</option>
						</select>
						:
						<select type="text" id="minuteDebut" name="minuteDebut">
						 <option ${evenement.minuteDebut == "00" ? 'selected' : '' } value="00">00</option>
						 <option ${evenement.minuteDebut == "05" ? 'selected' : '' } value="05">05</option>
						 <option ${evenement.minuteDebut == "10" ? 'selected' : '' } value="10">10</option>
						 <option ${evenement.minuteDebut == "15" ? 'selected' : '' } value="15">15</option>
						 <option ${evenement.minuteDebut == "20" ? 'selected' : '' } value="20">20</option>
						 <option ${evenement.minuteDebut == "25" ? 'selected' : '' } value="25">25</option>
						 <option ${evenement.minuteDebut == "30" ? 'selected' : '' } value="30">30</option>
						 <option ${evenement.minuteDebut == "35" ? 'selected' : '' } value="35">35</option>
						 <option ${evenement.minuteDebut == "40" ? 'selected' : '' } value="40">40</option>
						 <option ${evenement.minuteDebut == "45" ? 'selected' : '' } value="45">45</option>
						 <option ${evenement.minuteDebut == "50" ? 'selected' : '' } value="50">50</option>
						 <option ${evenement.minuteDebut == "55" ? 'selected' : '' } value="55">55</option>
						</select>
						</td>
				</tr>
				<tr>
					<td>Fin</td>
					<td><input type="date" id="dateFin" class="date" name="dateFin" value="${evenement.dateFin }" required></td>
				</tr>
				<tr>
					<td>À</td>
					<td><select type="text" id="heureFin" name="heureFin">
						 <option ${evenement.heureFin == "00" ? 'selected' : '' } value="00">00</option>
						 <option ${evenement.heureFin == "01" ? 'selected' : '' } value="01">01</option>
						 <option ${evenement.heureFin == "02" ? 'selected' : '' } value="02">02</option>
						 <option ${evenement.heureFin == "03" ? 'selected' : '' } value="03">03</option>
						 <option ${evenement.heureFin == "04" ? 'selected' : '' } value="04">04</option>
						 <option ${evenement.heureFin == "05" ? 'selected' : '' } value="05">05</option>
						 <option ${evenement.heureFin == "06" ? 'selected' : '' } value="06">06</option>
						 <option ${evenement.heureFin == "07" ? 'selected' : '' } value="07">07</option>
						 <option ${evenement.heureFin == "08" ? 'selected' : '' } value="08">08</option>
						 <option ${evenement.heureFin == "09" ? 'selected' : '' } value="09">09</option>
						 <option ${evenement.heureFin == "10" ? 'selected' : '' } value="10">10</option>
						 <option ${evenement.heureFin == "11" ? 'selected' : '' } value="11">11</option>
						 <option ${evenement.heureFin == "12" ? 'selected' : '' } value="12">12</option>
						 <option ${evenement.heureFin == "13" ? 'selected' : '' } value="13">13</option>
						 <option ${evenement.heureFin == "14" ? 'selected' : '' } value="14">14</option>
						 <option ${evenement.heureFin == "15" ? 'selected' : '' } value="15">15</option>
						 <option ${evenement.heureFin == "16" ? 'selected' : '' } value="16">16</option>
						 <option ${evenement.heureFin == "17" ? 'selected' : '' } value="17">17</option>
						 <option ${evenement.heureFin == "18" ? 'selected' : '' } value="18">18</option>
						 <option ${evenement.heureFin == "19" ? 'selected' : '' } value="19">19</option>
						 <option ${evenement.heureFin == "20" ? 'selected' : '' } value="20">20</option>
						 <option ${evenement.heureFin == "21" ? 'selected' : '' } value="21">21</option>
						 <option ${evenement.heureFin == "22" ? 'selected' : '' } value="22">22</option>
						 <option ${evenement.heureFin == "23" ? 'selected' : '' } value="23">23</option>
						</select>
						:
						<select type="text" id="minuteFin" name="minuteFin">
						 <option ${evenement.minuteFin == "00" ? 'selected' : '' } value="00">00</option>
						 <option ${evenement.minuteFin == "05" ? 'selected' : '' } value="05">05</option>
						 <option ${evenement.minuteFin == "10" ? 'selected' : '' } value="10">10</option>
						 <option ${evenement.minuteFin == "15" ? 'selected' : '' } value="15">15</option>
						 <option ${evenement.minuteFin == "20" ? 'selected' : '' } value="20">20</option>
						 <option ${evenement.minuteFin == "25" ? 'selected' : '' } value="25">25</option>
						 <option ${evenement.minuteFin == "30" ? 'selected' : '' } value="30">30</option>
						 <option ${evenement.minuteFin == "35" ? 'selected' : '' } value="35">35</option>
						 <option ${evenement.minuteFin == "40" ? 'selected' : '' } value="40">40</option>
						 <option ${evenement.minuteFin == "45" ? 'selected' : '' } value="45">45</option>
						 <option ${evenement.minuteFin == "50" ? 'selected' : '' } value="50">50</option>
						 <option ${evenement.minuteFin == "55" ? 'selected' : '' } value="55">55</option>
						</select></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Enregistrer"></td>
				</tr>
			</tbody>
		</table>