import { Router } from 'express';
import plinkooRouter from './plinkoo/plinkoo.router';
import minesRouter from './mines/mines.router';
import limboRouter from './limbo/limbo.router';
import kenoRouter from './keno/keno.router';
import diceRouter from './dice/dice.router';

const gameRouter = Router();

gameRouter.use('/plinkoo', plinkooRouter);
gameRouter.use('/mines', minesRouter);
gameRouter.use('/limbo', limboRouter);
gameRouter.use('/keno', kenoRouter);
gameRouter.use('/dice', diceRouter);

export default gameRouter;
