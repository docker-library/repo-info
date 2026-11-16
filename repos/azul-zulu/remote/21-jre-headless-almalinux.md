## `azul-zulu:21-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:a34ad009c37362c4b42f645edbd7d23b3b828c55e4e5ab37088f065c0c307469
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:de1975130a157a9f2b170f94a7e262288ceead2fcfbb4da9101854576aea8c04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.1 MB (145051721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:047268c0ab4c87858ae35e51e95e30573d0ae679f298f069ca1ee792c09bc301`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:04 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:04 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:11:01 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:11:01 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:11:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-headless-21.0.13.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:11:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Mon, 16 Nov 2026 18:11:01 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a26d9f3f79deaf4a4a70ff69a513a17224b97619854edd45529e736a7919191`  
		Last Modified: Mon, 16 Nov 2026 18:11:14 GMT  
		Size: 75.9 MB (75925942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2236c16f2ed8504386df0415818dc487465d3a12c498e52b3494200e88497533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ac54e6b6e61ca7fff2e3677a2293b280933d748ab27aaa28c1697d90240eae`

```dockerfile
```

-	Layers:
	-	`sha256:1dc269c2e2cbadd37b3a0c1523cf2f9d4e6c098868ce995739b9ffd30b78b1df`  
		Last Modified: Mon, 16 Nov 2026 18:11:11 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:ffd997da0b02dd2ba9071f037262db90694cd53c7c5952208e081764a447553e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143284344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1d9182c46d8f502c1c6116c9dc88dfad6843e535f672211f45e1e53555c9592`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:52 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:52 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-headless-21.0.13.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Mon, 16 Nov 2026 18:10:52 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13c75e55675881117ab8f39c72f763618f5e86564db18bf4dec282220d3af96`  
		Last Modified: Mon, 16 Nov 2026 18:11:05 GMT  
		Size: 75.6 MB (75586528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7557b79b4a0a32338b825697d673fb2830216ff1a7318ce5ea63a8315333144e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe20c713d64413947f7669f9dbbb7e3a7ae115cb58cc6765ca029d06336cecf0`

```dockerfile
```

-	Layers:
	-	`sha256:6edfba2b844d8620637c7c927094dc9b94aa55ade9494ea36742207606fd0390`  
		Last Modified: Mon, 16 Nov 2026 18:11:03 GMT  
		Size: 9.3 KB (9342 bytes)  
		MIME: application/vnd.in-toto+json
