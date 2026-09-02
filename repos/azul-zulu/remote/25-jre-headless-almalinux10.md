## `azul-zulu:25-jre-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:9ec2f21de7662891716c416618854aa03f98e11fbc84409d2b4881c148ad6e8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:f1b98006ab135235a50cddc5707a797e0b01a410a054e17295291dd49cc152b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.6 MB (158555943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cab1fcea2060aedf2f7767bb714b1bd825b3b0067aa52719911445221d5aa2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:13 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:13 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:17:11 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:17:11 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:17:11 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-headless-25.0.4.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:17:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 02 Sep 2026 22:17:11 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:653c5d8d0d6694b5f22ff2c258227792bc61603c5743f59b2221eb24864d05d3`  
		Last Modified: Wed, 02 Sep 2026 21:53:28 GMT  
		Size: 68.9 MB (68862668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:466d5ab9db9b2930383ac982ac5a25d7fa0c80274f69f6afaaf0378e06a2e03b`  
		Last Modified: Wed, 02 Sep 2026 22:17:26 GMT  
		Size: 89.7 MB (89693275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4ddedcf9ef74b0b91836a1a9666f889716cfe751e3e43990ca2834ba359845aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93add3daf90502ef467209899629e421f5c2f5e5b2a6b50499ea7ce61eed1224`

```dockerfile
```

-	Layers:
	-	`sha256:89270a48a240b2d0ba49806251d825df404b6264a522700337d14ceffc4d9ae4`  
		Last Modified: Wed, 02 Sep 2026 22:17:23 GMT  
		Size: 9.2 KB (9236 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f8c0925c51c74f66b9c73cea1f506494e12e0b91bb7c35e03b00b9f8de0fbd07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.7 MB (156695453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3abcb95f8c1c7902cf13e12470e52d41e43e2a75f08b70047c5a5be49532f4a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:16 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:18:31 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:18:31 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:18:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-headless-25.0.4.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:18:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 02 Sep 2026 22:18:31 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:802b840a8d25ea1358a31fbc4ea7c8131247ca176ca97b5f148712b005031c7f`  
		Last Modified: Wed, 02 Sep 2026 21:53:33 GMT  
		Size: 67.4 MB (67431802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94b61478dc3fcd276386f1b42900d86b673c75253a1e120759edbb0781fcda9e`  
		Last Modified: Wed, 02 Sep 2026 22:18:45 GMT  
		Size: 89.3 MB (89263651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:04855b7f7f357520029778a9d8c77375dc3c9169d9941825a211991629a69477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e19d6f9eac42062d5fdfac98a2beecf4e888d25a03b2400d6732c7dac9e891`

```dockerfile
```

-	Layers:
	-	`sha256:fbd86ebf2e0d2d8f1c9ff328a4965c76929aee2e294726007b7a57e59115b631`  
		Last Modified: Wed, 02 Sep 2026 22:18:43 GMT  
		Size: 9.3 KB (9329 bytes)  
		MIME: application/vnd.in-toto+json
