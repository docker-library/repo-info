## `azul-zulu:25-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:3533a99ced48f149150bbb498a14a95a3b17fa8cd1b3094eff2984e618488db5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a71fc3fce68b2862b00b1a0d2edaa89dbe23b35200ebc0418b8f5acc5902746e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252945474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1d31ffc259905d892c62a2a5461bb209f151123720ff8c49bfe8dc7d993637a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:43:04 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:04 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:04 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-headless-25.0.5.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:43:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 18 Nov 2026 02:43:04 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:43:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c8ed05f67e8ce67b2117bc5bf90d0308e038736e2767ea7a0780fad003ee23`  
		Last Modified: Wed, 18 Nov 2026 02:43:22 GMT  
		Size: 183.6 MB (183574994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7e7e88d2d1fe6a857510b383746f6b430cd75fc1d66519dd6007782ef95ca9ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2018c0c69d0a45e1365ac0a0775d317a9052c219ad4a6cbb67b3c5f90b232605`

```dockerfile
```

-	Layers:
	-	`sha256:54a43e17e81dc2bd68f4a8dd7e49ce9aa8f4e3b7555b68b3d2736df40e7ba9cc`  
		Last Modified: Wed, 18 Nov 2026 02:43:18 GMT  
		Size: 9.2 KB (9242 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:ea6ba2a27ea043c2efaececafc8d8350823c8655fc7549f97b10802989a5f2b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250628972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe917118058e29404f06c79470aac95b6b196d420e4fa2ca33e5c8b25e11907c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:43:00 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:00 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-headless-25.0.5.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:43:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 18 Nov 2026 02:43:00 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:43:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c3bb1f0eded9d646a8d305ffc84fa829a090c2294fbbbe7c237ff1776d24d57`  
		Last Modified: Wed, 18 Nov 2026 02:43:20 GMT  
		Size: 182.7 MB (182678398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:892e00daf4e5a5fafa47ead1771a732098f7f893b723aea21b1a193f6c5f4f11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6d944e1660b8f44935cca2672cfdeb5d66ba305293a1943d5a21757b19a3553`

```dockerfile
```

-	Layers:
	-	`sha256:09dae9821020391b86f09d8d5c31afca3fe7da0d79d01f015c7cadbce440e86c`  
		Last Modified: Wed, 18 Nov 2026 02:43:16 GMT  
		Size: 9.3 KB (9334 bytes)  
		MIME: application/vnd.in-toto+json
