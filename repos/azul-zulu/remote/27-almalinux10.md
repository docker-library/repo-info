## `azul-zulu:27-almalinux10`

```console
$ docker pull azul-zulu@sha256:5d7b91b8d1a77250ed11340f8b3505b70053ca3c19dd67493bd5b9bb720f88b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c15bd1629af10ed20959624622220025eb98ef04f91c829c23cfa21cdc0eb7d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.0 MB (254973221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ffa01537ea2a8bef5c1f14a1ac8395a9c74cda2f778ebc911c9fd81dbad7f3`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:10:20 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:10:20 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:10:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-27.0.1.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:10:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Mon, 16 Nov 2026 22:10:20 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:10:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:063e46aa5d3a82c7d40457a1012b023b4a3ab81b74790e8fc909f1d35bce2f5f`  
		Last Modified: Mon, 16 Nov 2026 22:10:39 GMT  
		Size: 185.6 MB (185602741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f547d4f9e909ebc8166ffd493ef8b05e4cfab13443ea82486743fb30b84fad53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7430334fadd384ed4a8aedb6c078251c4e9dc517453a925e380acf3f2ce4ad2a`

```dockerfile
```

-	Layers:
	-	`sha256:02dfe9676778bc9baa6f11431e05f223b7bcdd4622ae4bdda56f0dd18b9e0ca1`  
		Last Modified: Mon, 16 Nov 2026 22:10:35 GMT  
		Size: 9.5 KB (9495 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:348277443e2397a5f411cd18a74887cd914d39e969078824b9ef04e9cf33aa60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253230162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3db6d6d57926f5a4677ebeb3765caa2eb69fc45abc0f4f14f7264f6d20b276dc`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:10:20 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:10:20 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:10:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-27.0.1.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:10:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Mon, 16 Nov 2026 22:10:20 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:10:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dffaa63f8bc95b88800fd722a1b36b956acda663393ab3bde3399c21032d4b9`  
		Last Modified: Mon, 16 Nov 2026 22:10:40 GMT  
		Size: 185.3 MB (185279588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0516a8c211eeb142b2cc8fef612d202447d2dbe3e0276cef938c60450ea289ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab7f5f398144c2faa52baa37cbfc0f9b77eea73e480637f479920adaa21b0e63`

```dockerfile
```

-	Layers:
	-	`sha256:a55446fc63698f168b6bb9075a5802ee5fe724dfeb3d25a9d54e0133240f9a6f`  
		Last Modified: Mon, 16 Nov 2026 22:10:36 GMT  
		Size: 9.6 KB (9599 bytes)  
		MIME: application/vnd.in-toto+json
