pragma solidity 0.7.12;

contract Regulator {

    struct solarGrid {
        uint256 id ;
        uint solarGridCount;
        uint256 minigridId;
        uint256 meter_id;
        bool   active;
        uint256 node_id;
        string deviceid;
        uint256 totalEnergy;
        uint read_out;
        uint used_energy_since_last;
        uint created_at;
        uint updated_at;
        uint total_absorbed;
        uint absorbed_energy_since_last;
        
    }
    mapping (uint=>solarGrid) solar_grid;

     modifier onlyOwner(){
		    require(msg.sender == owner, "Access denied,not the regulator");
		    _; 
	    }
        
        event solarGridInfoRetrieved (
        uint256 _id 
        uint256 _minigridId,
        uint256 _meter_id,
        bool   _active,
        uint256 _node_id,
        string _deviceid,
        uint256 _totalEnergy,
        uint _read_out,
        uint _used_energy_since_last,
        uint _created_at,
        uint _updated_at,
        uint _total_absorbed,
        uint _absorbed_energy_since_last)
     
     
     function addSolarGrid(
        uint256 _id 
        uint256 _minigridId,
        uint256 _meter_id,
        bool   _active,
        uint256 _node_id,
        string memory _deviceid,
        uint256 _totalEnergy,
        uint _read_out,
        uint _used_energy_since_last,
        uint _created_at,
        uint _updated_at,
        uint _total_absorbed,
        uint _absorbed_energy_since_last) private  onlyOwner{
            solarGrid memory solargrid;
            require(solargrid.active == false,"Solar grid  already active");
            solargrid.id = _id;
            solargrid.mini_gridId =mini_gridId;
            solargrid.meter_id =_meter_id;
            solargrid.active =_active;
            solargrid.node_id =_node_id;
            solargrid.deviceid =_deviceid;
            solargrid.totalEnergy =_totalEnergy;
            solargrid.read_out =_read_out;
            solargrid.used_energy_since_last=_used_energy_since_last;
            solargrid.created_at =_created_at;
            solargrid.updated_at =_updated_at;
            solargrid.total_absorbed = _total_absorbed;
            solargrid.absorbed_energy_since_last=_absorbed_energy_since_last;
              solarGridCount += 1;
		
            emit solarGridInfoRetrieved (
         _id 
        _minigridId,
        _meter_id,
        _active,
        _node_id,
        _deviceid,
        _totalEnergy,
        _read_out,
        _used_energy_since_last,
        _created_at,
        _updated_at,
        _total_absorbed,
        _absorbed_energy_since_last);

     
    }
    function getSolarGridInfo(uint id) onlyOwner public returns(  
        uint,
        uint256,
        uint256, 
        bool,   
        uint256, 
        string,
        uint256, 
        uint, 
        uint,
        uint,
        uint, 
        uint, 
        uint)
    {
       solar_grid[id] = newId;
      return(
           newId.id,
           newId.id,
           newId.id,
           newId.id,
           newId.id,
           newId.id,
           newId.id,
           newId.id,
           newId.id
      )
    
    }
        
    
    
}