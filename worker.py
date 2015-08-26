from subprocess import call
import os
import sys

def filterbyvalue(seq, value):
   for el in seq:
       if value in el: yield el

def main():
    print('iniciando download')
    #part1 get file from s3 bucket
    __exec = 0 #call(['aws','s3','cp',str('s3://' + os.environ['BUCKET_NAME'] + '/' + sys.argv[1] + '.jar'),'.'])
    if (__exec == 0):
        print('download concluido buscando o componente para execucao')
        #part 2 execute with pattern
        destdir = '.'
        for file in list(filterbyvalue([ f for f in os.listdir(destdir) if os.path.isfile(os.path.join(destdir,f)) ],sys.argv[1]))[:1]:
            #do commands
            call(["java","-jar"] + [file] + sys.argv[2:])
    else:
        raise NameError('Problem download job')











if __name__ == "__main__":
    main()
