MPA.0 (Simplified Heat Equation Solver)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
File:		mpa.0.kernel.R
Lang:		R
Reqs:		pracma,deSolve

Equation form:
		a_1{\frac{\partial^2{u}}{\partial{x^2}}}+a_2{\frac{\partial{u}}{\partial{x}}}+a_3u+
		f(x,t)=\frac{\partial{u}}{\partial{t}}

Input:
		heat.1d.fem(a,u.t.start,u.x.start,u.x.final,deg,grid.t,grid.x,f=NULL,tol=.DEFAULT.TOL)

a		array of factors outside x-derivatives
u.t.start	initial condition (t=t_0)
u.x.start	boundary condition (x=x_0)
u.x.final	boundary condition (x=x_n)
deg		FEM-specific polynom degree (typically, deg=2)
grid.t		time grid
grid.x		coordinate grid
f		source term f(x,t)
tol		accuracy options (normally, default values are not recommended to be changed)

Output:
matrix with length(grid.t) rows and length(grid.x) columns whose cells are the appropriate values
of the function being solved.

P.S. mpa.0.run.R may be used as a demo.
