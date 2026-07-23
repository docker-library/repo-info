## `azul-zulu:17-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:8033842b8d1cffab9d272cd7d2c9efbc29b33f8306fb3c96fc8ab05a2e4387fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:cdf23e938032d9ae5752d08e272b077762909500a6c8276d06ecdd99c7838e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218909214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7684c0df0f74a3efc9871452ca5798ff00cb2983e5c625803d09f50554af55c2`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:29:03 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:03 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:03 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-headless-17.0.20-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:29:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 23 Jul 2026 22:29:03 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:29:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5d5230dacf045dfc39151d74fac3992ac151700f67992b7434a1879cd797808`  
		Last Modified: Thu, 23 Jul 2026 22:29:19 GMT  
		Size: 150.3 MB (150346752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:eede0afeae08d58f92b06fa98ce176da8b3bab0e96bd653b483fba343dbc569a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b911fca71d7e2a4cd579e22f548fe83e915c1adf753f91c423354710035436e`

```dockerfile
```

-	Layers:
	-	`sha256:1e672b5c078c80b7c47ae7bc86781dc6fcca6f4fabfa5784e0ac63344aae9d34`  
		Last Modified: Thu, 23 Jul 2026 22:29:16 GMT  
		Size: 9.2 KB (9239 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:ee2c293e9f7d750888c501cfb754ebdef880e99677ecfe07df8306530a208ec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.5 MB (217485209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3edc6d429195f62c207c29b104fc374351ba110b4cd54b4e4652ab0ba9885998`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:29:58 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:58 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:58 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-headless-17.0.20-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:29:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 23 Jul 2026 22:29:58 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:29:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aadde759e991228ca86648b193193a25b8f44f0eabc63ad80cc28280b36d557c`  
		Last Modified: Thu, 23 Jul 2026 22:30:15 GMT  
		Size: 150.3 MB (150343248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e4b8fc1db8b877762eef224d1bcf6602a409aae08be15f91f2b85e28910ba352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514a8bea4ac256c281bb8f09f388f232bcd546fd9b973990072763036acc6845`

```dockerfile
```

-	Layers:
	-	`sha256:87ddfd1f2415b14bd401146ee3b5a54d460d35da6fe51bbb640dcde91e2d8310`  
		Last Modified: Thu, 23 Jul 2026 22:30:11 GMT  
		Size: 9.3 KB (9331 bytes)  
		MIME: application/vnd.in-toto+json
