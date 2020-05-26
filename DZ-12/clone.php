<?php
//Копіювання об'єктів по посиланню здійснюється оператором =:
//$rasmus = $zeev;
//Копіювання об'єктів за значенням здійснюється ключовим словом clone:
//$rasmus = clone $zeev;

class Address{
    protected $city;
    public function setCity($city) { $this->city = $city; }
    public function getCity() { return $this->city; }
}


class Person{
    protected $name;
    protected $address;
    public function __construct() { $this->address = new Address; }
    public function setName($name) { $this->name = $name; }
    public function getName() { return $this->name; }
    public function __clone() {
        $this->address = clone $this->address;
        }
    public function __call($method, $arguments) {
    if (method_exists($this->address, $method)) {
        return call_user_func_array( array($this->address, $method), $arguments);
        
    }
    }
}


$rasmus = new Person;
$rasmus->setName('Rasmus Lerdorf');
$rasmus->setCity('Sunnyvale');

$zeev = clone $rasmus;
$zeev->setName('Zeev Suraski');
$zeev->setCity('Tel Aviv');

echo "<pre>";
print $rasmus->getName() . ' lives in ' . $rasmus->getCity() . "\n";
print $zeev->getName() . ' lives in ' . $zeev->getCity() . '.';