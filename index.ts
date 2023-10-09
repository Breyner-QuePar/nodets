import express, { Application, Request, Response } from 'express';
import cors from 'cors';

const app: Application = express();
app.use(express.json());
app.use(cors());

const port = 3000;

app.get('/', (req: Request, res: Response) => {
    res.send('Hello World!');
});

app.get('/api', (req: Request, res: Response) => {
    res.send('Hello API!');
}
);

app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});
