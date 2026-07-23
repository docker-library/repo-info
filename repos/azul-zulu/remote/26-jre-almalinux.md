## `azul-zulu:26-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:ac5e804a8db0b15ce016e85d47bf950826a397c56d37de45ac171671135329e2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:0987d6f8fb76ebf59b4404cda4c85bc8dec09dc27d322b6de3eaac4f6623b1f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.0 MB (159979901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b048ab8ea2cb5e71d07d0b62b9e96e2ece1d7f2d6384347ca7421adf16e3d741`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:30:56 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:56 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:56 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-26.0.2-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:30:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 23 Jul 2026 22:30:56 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bfc8c7cc847f51e15d0d8b9c685291fd7fd95cc243d636a7114d147843a4a46`  
		Last Modified: Thu, 23 Jul 2026 22:31:10 GMT  
		Size: 91.4 MB (91417439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:53d7e32200582a5fe03bc3d6a9ad61a9600bb8cb19c8256e5f800ad37eb6b37f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d06f029b8aaaa3902378d1cee620c96d1c7a933e190cbcb104bd0612171488`

```dockerfile
```

-	Layers:
	-	`sha256:6ea819571b949feac6c6cd3863ce44430205ea24c35bce956b685198eadacaf2`  
		Last Modified: Thu, 23 Jul 2026 22:31:08 GMT  
		Size: 9.1 KB (9137 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:517994d2658c162f9a1eb16d9087d7ce3e2343c9d106616c99b53c0a3b50f3d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158485672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f57cf02099b9822e6cf2a9dbf1d9ca0bf204993d87fa47b19ff00b85716057c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:32:05 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:32:05 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:32:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-26.0.2-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:32:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 23 Jul 2026 22:32:05 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d7cf18106ba8a79bc150989c80d09ece9770fe702f3ddca2910b99310b227de`  
		Last Modified: Thu, 23 Jul 2026 22:32:20 GMT  
		Size: 91.3 MB (91343711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7e0eccf53464493d99619ce0bed89597073fe7cc10dce328b86e88c32774c9d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d8e63addb6664a6199949390747eab0a5a6e9160f19ebf02fd9031eaa9c303`

```dockerfile
```

-	Layers:
	-	`sha256:4e72977b8d7c766f24b37d690a4a0e74652ce6545026cb652bd04f0ed12e8adf`  
		Last Modified: Thu, 23 Jul 2026 22:32:17 GMT  
		Size: 9.2 KB (9230 bytes)  
		MIME: application/vnd.in-toto+json
