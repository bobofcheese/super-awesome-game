function approach(_value, _goal, _speed){
	if _goal == _value
		return _goal;
	var add = _value + (_speed * sign(_goal - _value))
	if _goal > _value
	{
		if add > _goal
			return _goal;
	}
	else if _goal < _value
	{
		if _goal > add
			return _goal;
	}
	return add;
}