private _array = [];
private _currentEnd = 0;

for [{_i = 0}, {_i < 16}, {_i = _i + 1}] do
{
  _array = _array + "nil";
};

circularArray =
{
  private _manipulation = _this select 0;
  private _data = _this select 1;

  if (_manipulation == "Add")
  {
    if (_currentEnd == 15)
    {
      _currentEnd = 0;
      _array[_currentEnd] = _data;
    }
    else
    {
      _array[_currentEnd + 1] = _data;
      _currentEnd = _currentEnd + 1;
    }
  }

  _array;
}

for [{_i = 0}, {_i < 16}, {_i = _i + 1}] do
{
  _array = ["Add", "You hackin' dude?"] call circularArray;
};

hint str _array;

for [{_i = 0}, {_i < 8}, {_i = _i + 1}] do
{
  _array = ["Add", "That's illegal"] call circularArray;
};

hint str _array;
