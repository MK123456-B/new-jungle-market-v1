const spaces = [
  ['01','CLIENT','Découvrir les boutiques, rechercher et commander.'],
  ['02','ENTREPRISE','Gérer une boutique, les produits et les commandes.'],
  ['03','ADMIN & ÉQUIPE','Administrer la plateforme et accompagner les utilisateurs.'],
];
export default function HomePage() {
  return <main className="shell">
    <header><div className="brand"><span className="mark">NJ</span> NEW JUNGLE MARKET</div><small>VERSION 1 · SOCLE EN CONSTRUCTION</small></header>
    <section className="hero"><p className="eyebrow">LA MARKETPLACE MULTI-VENDEURS</p><h1>Tout un marché.<br/><em>Un seul espace.</em></h1><p className="intro">Bienvenue sur le socle technique de NEW JUNGLE MARKET. Les espaces Client, Entreprise et Administration seront intégrés progressivement.</p></section>
    <section className="spaces">{spaces.map(([n,t,d])=><article key={n}><span>{n}</span><h2>{t}</h2><p>{d}</p><small>EN PRÉPARATION</small></article>)}</section>
    <footer>© NEW JUNGLE MARKET · Bujumbura · V1</footer>
  </main>;
}
