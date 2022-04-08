<link rel="stylesheet" href="/files/disks.css"/>

<div class="dpagesubcontainer">
    <h2>Disks: </h2>
    {{range $i, $a := .Disks}}
    {{$a}}<br>
    {{end}}
    <h2>Arrays: </h2>
    {{range $i, $a := .Arrays}}
    {{$a}}<br>
    {{end}}
    <div class="dropdown">
        <button
            class="btn dmenubtn btn-floating"
            type="button"
            id="dropdownMenuButton"
            data-mdb-toggle="dropdown"
            aria-expanded="false" >
            <i class="fas fa-ellipsis-v"></i>
        </button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <li><a class="dropdown-item" href="#">Delete array</a></li>
            <li><a class="dropdown-item" href="#">Add drive to array</a></li>
            <li><a class="dropdown-item" href="#">View more details</a></li>
        </ul>
    </div>
    <br>

    <table id="darrayslist" class="darrayslist">
        <thead>
            <tr>
                <th scope="col"><input class="form-check-input" type="checkbox" value="" id=""/></th>
                <th scope="col"><b>Name</b></th>
                <th scope="col"><b>UUID</b></th>
                <th scope="col"><b>Level</b></th>
                <th scope="col"><b>Disk count</b></th>
                <th scope="col"><b>Degraded discs</b></th>
                <th scope="col"><b>State</b></th>
                <th scope="col"><b>Consistency Policy</b></th>
                <th scope="col"><b>Sync Action</b></th>
                <th scope="col" style="padding-right: 0px" class="dacntr"><b>Status</b></th>
                <th scope="col" style="padding-left: 0px; padding-right: 0px"></th>
            </tr>
        </thead>
        <tbody>
            {{$arrayscount := len .ArrayData}}
            {{if eq $arrayscount 0}}
                <tr>
                    <td colspan="10">
                        You have no RAID arrays in your system.
                    </td>
                </tr>
            {{end}}
            {{range $i, $ar := .ArrayData}}
                <tr>
                    <td class="tdulbottom"><input class="form-check-input" type="checkbox" value="" id=""/></td>
                    <td>{{$ar.Name}}</td>
                    <td>{{$ar.UUID}}</td>
                    <td>{{$ar.Level}}</td>
                    <td>{{$ar.Raid_disks}}</td>
                    <td>{{$ar.Degraded}}</td>
                    <td>{{$ar.Array_state}}</td>
                    <td>{{$ar.Consistency_policy}}</td>
                    <td>{{$ar.Sync_action}}</td>
                    <td style="padding-right: 0px" class="dacntr"><i class="fa-solid fa-circle-check dgreenindicator"></i></td>
                    <td style="padding-left: 0px; padding-right: 0px" class="tdulbottom">
                        <div class="dropdown">
                            <button
                                class="btn dmenubtn btn-floating"
                                type="button"
                                id="dropdownMenuButton"
                                data-mdb-toggle="dropdown"
                                aria-expanded="false" >
                                <i class="fas fa-ellipsis-v"></i>
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <li><a class="dropdown-item" href="#">Delete array</a></li>
                                <li><a class="dropdown-item" href="#">Add drive to array</a></li>
                                <li><a class="dropdown-item" href="#">View more details</a></li>
                            </ul>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="dtdarraydisks"></td>
                    <td class="dtdarraydisks tdulbottomleftright" colspan="9">
                        <table class="darraydiskslist"> 
                            <thead>
                                <tr>
                                    <th scope="col"><b>Disks</b></th>
                                    <th scope="col"><b>Capacity</b></th>
                                    <th scope="col"><b>Model</b></th>
                                    <th scope="col"><b>Serial</b></th>
                                    <th scope="col"><b>Status</b></th>
                                    <th scope="col" class="daright"><b>Condition</b></th>
                                </tr>
                            </thead>
                            <tbody>
                                {{range $ii, $d := $ar.Disks}}
                                    <tr>
                                        <td>{{$d.Name}}</td>
                                        <td>{{$d.SizeShortened}}</td>
                                        <td>{{$d.Model}} ({{$d.Revision}})</td>
                                        <td>{{$d.Serial}}</td>
                                        <td>{{$d.State}}</td>
                                        <td class="daright">
                                            {{if $d.StateIsGood}}<i class="fa-solid fa-circle-check dgreenindicator"></i>
                                            {{else}}<i class="fa-solid fa-circle-xmark dredindicator"></i>
                                            {{end}}
                                        </td>
                                    </tr>
                                {{end}}
                            </tbody>
                        </table>
                    </td>
                </tr>
            {{end}}
        </tbody>
    </table>
</div>