Title: Projects
Slug: projects
Status: published

<div class="page-header">
  <p class="hero-eyebrow">Portfolio</p>
  <h1 class="page-title">Selected <em>projects</em></h1>
  <p class="page-subtitle">
    A selection of infrastructure and platform engineering work — from internal developer platforms
    to multi-cloud Kubernetes setups and fully automated CI/CD pipelines.
  </p>
</div>

<div class="projects-grid">

  <!-- Project 1 -->
  <div class="project-card">
    <div class="project-card-top">
      <div class="project-icon icon-teal">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><path d="M12 8v4l3 3"/></svg>
      </div>
      <span class="project-status status-live">live</span>
    </div>
    <p class="project-name">Internal Developer Platform</p>
    <p class="project-desc">
      Self-service Kubernetes platform enabling teams to deploy services via GitOps workflows.
      Reduced mean time to deploy from hours to under 5 minutes.
    </p>
    <div class="project-stack">
      <span class="skill-tag k8s">Kubernetes</span>
      <span class="skill-tag ci">ArgoCD</span>
      <span class="skill-tag iac">Helm</span>
      <span class="skill-tag gcp">GCP</span>
    </div>
    <div class="project-links">
      <a href="https://github.com/tighov" class="project-link" target="_blank" rel="noopener">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M12 0C5.37 0 0 5.37 0 12c0 5.3 3.44 9.8 8.2 11.39.6.11.82-.26.82-.58v-2.03c-3.34.73-4.03-1.61-4.03-1.61-.55-1.39-1.34-1.76-1.34-1.76-1.09-.74.08-.73.08-.73 1.2.08 1.84 1.24 1.84 1.24 1.07 1.83 2.8 1.3 3.49 1 .11-.78.42-1.3.76-1.6-2.67-.3-5.47-1.33-5.47-5.93 0-1.31.47-2.38 1.24-3.22-.13-.3-.54-1.52.12-3.18 0 0 1.01-.32 3.3 1.23a11.5 11.5 0 0 1 3-.4c1.02.005 2.04.14 3 .4 2.28-1.55 3.29-1.23 3.29-1.23.66 1.66.25 2.88.12 3.18.77.84 1.24 1.91 1.24 3.22 0 4.61-2.81 5.63-5.48 5.92.43.37.81 1.1.81 2.22v3.29c0 .32.21.7.82.58C20.56 21.8 24 17.3 24 12c0-6.63-5.37-12-12-12z"/></svg>
        GitHub
      </a>
    </div>
  </div>

  <!-- Project 2 -->
  <div class="project-card">
    <div class="project-card-top">
      <div class="project-icon icon-blue">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><polyline points="16 18 22 12 16 6"/><polyline points="8 6 2 12 8 18"/></svg>
      </div>
      <span class="project-status status-live">live</span>
    </div>
    <p class="project-name">Multi-Cloud CI/CD Framework</p>
    <p class="project-desc">
      Reusable GitHub Actions &amp; Cloud Build pipeline templates for consistent deployments
      across GCP, AWS, and OCI. Used by 10+ teams.
    </p>
    <div class="project-stack">
      <span class="skill-tag ci">GitHub Actions</span>
      <span class="skill-tag gcp">Cloud Build</span>
      <span class="skill-tag">Docker</span>
      <span class="skill-tag aws">AWS</span>
    </div>
    <div class="project-links">
      <a href="https://github.com/tighov" class="project-link" target="_blank" rel="noopener">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M12 0C5.37 0 0 5.37 0 12c0 5.3 3.44 9.8 8.2 11.39.6.11.82-.26.82-.58v-2.03c-3.34.73-4.03-1.61-4.03-1.61-.55-1.39-1.34-1.76-1.34-1.76-1.09-.74.08-.73.08-.73 1.2.08 1.84 1.24 1.84 1.24 1.07 1.83 2.8 1.3 3.49 1 .11-.78.42-1.3.76-1.6-2.67-.3-5.47-1.33-5.47-5.93 0-1.31.47-2.38 1.24-3.22-.13-.3-.54-1.52.12-3.18 0 0 1.01-.32 3.3 1.23a11.5 11.5 0 0 1 3-.4c1.02.005 2.04.14 3 .4 2.28-1.55 3.29-1.23 3.29-1.23.66 1.66.25 2.88.12 3.18.77.84 1.24 1.91 1.24 3.22 0 4.61-2.81 5.63-5.48 5.92.43.37.81 1.1.81 2.22v3.29c0 .32.21.7.82.58C20.56 21.8 24 17.3 24 12c0-6.63-5.37-12-12-12z"/></svg>
        GitHub
      </a>
    </div>
  </div>

  <!-- Project 3 -->
  <div class="project-card">
    <div class="project-card-top">
      <div class="project-icon icon-amber">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><rect x="2" y="3" width="20" height="14" rx="2"/><line x1="8" y1="21" x2="16" y2="21"/><line x1="12" y1="17" x2="12" y2="21"/></svg>
      </div>
      <span class="project-status status-live">live</span>
    </div>
    <p class="project-name">GCP Landing Zone (Terraform)</p>
    <p class="project-desc">
      Production-ready GCP organisation bootstrap using Terraform: VPC, IAM hierarchy,
      shared services, security baseline, and budget alerts.
    </p>
    <div class="project-stack">
      <span class="skill-tag iac">Terraform</span>
      <span class="skill-tag gcp">GCP</span>
      <span class="skill-tag iac">Ansible</span>
    </div>
    <div class="project-links">
      <a href="https://github.com/tighov" class="project-link" target="_blank" rel="noopener">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M12 0C5.37 0 0 5.37 0 12c0 5.3 3.44 9.8 8.2 11.39.6.11.82-.26.82-.58v-2.03c-3.34.73-4.03-1.61-4.03-1.61-.55-1.39-1.34-1.76-1.34-1.76-1.09-.74.08-.73.08-.73 1.2.08 1.84 1.24 1.84 1.24 1.07 1.83 2.8 1.3 3.49 1 .11-.78.42-1.3.76-1.6-2.67-.3-5.47-1.33-5.47-5.93 0-1.31.47-2.38 1.24-3.22-.13-.3-.54-1.52.12-3.18 0 0 1.01-.32 3.3 1.23a11.5 11.5 0 0 1 3-.4c1.02.005 2.04.14 3 .4 2.28-1.55 3.29-1.23 3.29-1.23.66 1.66.25 2.88.12 3.18.77.84 1.24 1.91 1.24 3.22 0 4.61-2.81 5.63-5.48 5.92.43.37.81 1.1.81 2.22v3.29c0 .32.21.7.82.58C20.56 21.8 24 17.3 24 12c0-6.63-5.37-12-12-12z"/></svg>
        GitHub
      </a>
    </div>
  </div>

  <!-- Project 4 -->
  <div class="project-card">
    <div class="project-card-top">
      <div class="project-icon icon-purple">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path d="M22 12h-4l-3 9L9 3l-3 9H2"/></svg>
      </div>
      <span class="project-status status-live">live</span>
    </div>
    <p class="project-name">Observability Stack</p>
    <p class="project-desc">
      Full observability platform built on Prometheus, Grafana, Loki, and Tempo.
      Deployed via Helm with GitOps-managed dashboards-as-code.
    </p>
    <div class="project-stack">
      <span class="skill-tag">Prometheus</span>
      <span class="skill-tag">Grafana</span>
      <span class="skill-tag iac">Helm</span>
      <span class="skill-tag k8s">Kubernetes</span>
    </div>
    <div class="project-links">
      <a href="https://github.com/tighov" class="project-link" target="_blank" rel="noopener">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M12 0C5.37 0 0 5.37 0 12c0 5.3 3.44 9.8 8.2 11.39.6.11.82-.26.82-.58v-2.03c-3.34.73-4.03-1.61-4.03-1.61-.55-1.39-1.34-1.76-1.34-1.76-1.09-.74.08-.73.08-.73 1.2.08 1.84 1.24 1.84 1.24 1.07 1.83 2.8 1.3 3.49 1 .11-.78.42-1.3.76-1.6-2.67-.3-5.47-1.33-5.47-5.93 0-1.31.47-2.38 1.24-3.22-.13-.3-.54-1.52.12-3.18 0 0 1.01-.32 3.3 1.23a11.5 11.5 0 0 1 3-.4c1.02.005 2.04.14 3 .4 2.28-1.55 3.29-1.23 3.29-1.23.66 1.66.25 2.88.12 3.18.77.84 1.24 1.91 1.24 3.22 0 4.61-2.81 5.63-5.48 5.92.43.37.81 1.1.81 2.22v3.29c0 .32.21.7.82.58C20.56 21.8 24 17.3 24 12c0-6.63-5.37-12-12-12z"/></svg>
        GitHub
      </a>
    </div>
  </div>

  <!-- Project 5 -->
  <div class="project-card">
    <div class="project-card-top">
      <div class="project-icon icon-green">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg>
      </div>
      <span class="project-status status-live">live</span>
    </div>
    <p class="project-name">Zero-Trust Security Baseline</p>
    <p class="project-desc">
      Kubernetes security hardening framework: OPA Gatekeeper policies, network policies,
      Falco runtime security, and Trivy image scanning in CI.
    </p>
    <div class="project-stack">
      <span class="skill-tag k8s">Kubernetes</span>
      <span class="skill-tag">OPA</span>
      <span class="skill-tag">Falco</span>
      <span class="skill-tag">Trivy</span>
    </div>
    <div class="project-links">
      <a href="https://github.com/tighov" class="project-link" target="_blank" rel="noopener">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M12 0C5.37 0 0 5.37 0 12c0 5.3 3.44 9.8 8.2 11.39.6.11.82-.26.82-.58v-2.03c-3.34.73-4.03-1.61-4.03-1.61-.55-1.39-1.34-1.76-1.34-1.76-1.09-.74.08-.73.08-.73 1.2.08 1.84 1.24 1.84 1.24 1.07 1.83 2.8 1.3 3.49 1 .11-.78.42-1.3.76-1.6-2.67-.3-5.47-1.33-5.47-5.93 0-1.31.47-2.38 1.24-3.22-.13-.3-.54-1.52.12-3.18 0 0 1.01-.32 3.3 1.23a11.5 11.5 0 0 1 3-.4c1.02.005 2.04.14 3 .4 2.28-1.55 3.29-1.23 3.29-1.23.66 1.66.25 2.88.12 3.18.77.84 1.24 1.91 1.24 3.22 0 4.61-2.81 5.63-5.48 5.92.43.37.81 1.1.81 2.22v3.29c0 .32.21.7.82.58C20.56 21.8 24 17.3 24 12c0-6.63-5.37-12-12-12z"/></svg>
        GitHub
      </a>
    </div>
  </div>

  <!-- Project 6 — this site -->
  <div class="project-card">
    <div class="project-card-top">
      <div class="project-icon icon-coral">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><line x1="2" y1="12" x2="22" y2="12"/><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"/></svg>
      </div>
      <span class="project-status status-live">live</span>
    </div>
    <p class="project-name">tighov.link</p>
    <p class="project-desc">
      This site — a custom Pelican theme deployed to GCS via Terraform and GitHub Actions.
      Static, fast, and fully infrastructure-as-code.
    </p>
    <div class="project-stack">
      <span class="skill-tag">Pelican</span>
      <span class="skill-tag iac">Terraform</span>
      <span class="skill-tag gcp">GCS</span>
      <span class="skill-tag ci">GitHub Actions</span>
    </div>
    <div class="project-links">
      <a href="https://github.com/tighov/tighov.link" class="project-link" target="_blank" rel="noopener">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M12 0C5.37 0 0 5.37 0 12c0 5.3 3.44 9.8 8.2 11.39.6.11.82-.26.82-.58v-2.03c-3.34.73-4.03-1.61-4.03-1.61-.55-1.39-1.34-1.76-1.34-1.76-1.09-.74.08-.73.08-.73 1.2.08 1.84 1.24 1.84 1.24 1.07 1.83 2.8 1.3 3.49 1 .11-.78.42-1.3.76-1.6-2.67-.3-5.47-1.33-5.47-5.93 0-1.31.47-2.38 1.24-3.22-.13-.3-.54-1.52.12-3.18 0 0 1.01-.32 3.3 1.23a11.5 11.5 0 0 1 3-.4c1.02.005 2.04.14 3 .4 2.28-1.55 3.29-1.23 3.29-1.23.66 1.66.25 2.88.12 3.18.77.84 1.24 1.91 1.24 3.22 0 4.61-2.81 5.63-5.48 5.92.43.37.81 1.1.81 2.22v3.29c0 .32.21.7.82.58C20.56 21.8 24 17.3 24 12c0-6.63-5.37-12-12-12z"/></svg>
        Source
      </a>
    </div>
  </div>

</div>
