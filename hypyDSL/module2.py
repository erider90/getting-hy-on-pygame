def add_str(*args, **kwargs):
    kwargs_list = ['%s=%s' % (k, kwargs[k]) for k in kwargs]
    print(''.join(args), ','.join(kwargs_list))

def add_num(*args, **kwargs):
    t = globals()['__builtins__'][kwargs['type']]
    print(sum(map(t, args)))
# add on 
def print_str(*args):
  string = ""
  for arg in args:
    string += str(arg) + " "
  print(string)

# Example usage
#print_str("Hello", "world!", 1, 2, 3)  # Output: Hello world! 1 2 3

