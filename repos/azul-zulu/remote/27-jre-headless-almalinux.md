## `azul-zulu:27-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:005fda2f8c13c795e4b35cecf989557a093eda85824a78dcfba3a270d48c3d1e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:24097d715c048b380860edc6d285017d9448caa3d849d7603eb3acf447245d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.0 MB (160043422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0d9abdf388cbbe33a81950f4e0e2a8c0177f2a6d5baea63b074340ddbe0a02b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:43:43 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:43 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:43 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jre-headless-27.0.1.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:43:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 18 Nov 2026 02:43:43 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc56b95f62c3f8217a14e403bd75e72e1f7f99858ec4cbdb3cc19ba787e17954`  
		Last Modified: Wed, 18 Nov 2026 02:43:57 GMT  
		Size: 90.7 MB (90672942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0fc60ef10c6c8e704edcf211c6ace2b5f7dc804c63762d4b8e73f3fc33d69884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1f2df8b977a1749155059823558f85333c64b752c73ff1810d82fa2317ec6c`

```dockerfile
```

-	Layers:
	-	`sha256:1457ac515682de957f13fe12cfcd7edaa2ab03d929a2eb01ed4fed41fe581d35`  
		Last Modified: Wed, 18 Nov 2026 02:43:55 GMT  
		Size: 9.2 KB (9237 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:136006e2075764be0a4bda059f9ac2008ba53255a3931d723ccc84cf1a4acbbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158511804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:810d0cf1ef4afd017eacb521161dc4901ffd6542cc335bc38fec9d20f88cbc7e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:43:40 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:40 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:40 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jre-headless-27.0.1.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:43:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 18 Nov 2026 02:43:40 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3894cf280e6fb2571bc3f82aa8cd84933f12ff601a48f8f223d20e185f85333b`  
		Last Modified: Wed, 18 Nov 2026 02:43:55 GMT  
		Size: 90.6 MB (90561230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e4209ccc1fc39396cdb9f17209624988c61b297406d23faa4cfe6e9e4d87c6ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:251262aa18ddc5a98be681d6a9f09690c346ad214b070d388d4f584de26523d9`

```dockerfile
```

-	Layers:
	-	`sha256:ddbce79d542b497aa0747cd7a862d92574e18792554502da7b1c759ef2919fa4`  
		Last Modified: Wed, 18 Nov 2026 02:43:52 GMT  
		Size: 9.3 KB (9329 bytes)  
		MIME: application/vnd.in-toto+json
