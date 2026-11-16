## `azul-zulu:25-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:8fa9f0b01d716664fbea665d139d54e1f878942aa34f6e3b9962500a9f8c63a7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:f165c35d5bae9305dbabd04cbd7f335a3ef916f6db57978f7cfd20462cfc18c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159944903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538c7380896b4dca33efd23261f48f1371755b450d8e3a3fe386abe7aa69062b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:55 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:55 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-25.0.5.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Mon, 16 Nov 2026 22:09:55 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e15b200e908fcb9f6ffe0680fe1eba4198df060e3d9797aaff457bf2791f237`  
		Last Modified: Mon, 16 Nov 2026 22:10:10 GMT  
		Size: 90.6 MB (90574423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f85146aea10107b04b90eb0d4f6517078be7bde8411b344286772cdfcd03f6b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711965ef3575773dc4cce7788d741a550910af207c64a6726738648b28329d6d`

```dockerfile
```

-	Layers:
	-	`sha256:a93d6ba42875f352cc5c79b0a7e16ea729bdcfe6a8b9e3574c88825143821f21`  
		Last Modified: Mon, 16 Nov 2026 22:10:08 GMT  
		Size: 9.2 KB (9154 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:cbf5cf0eb084721ae3b06c1a514d2f0bbf767fec8ce755a0d90e493663bdb609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.1 MB (158084163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf775cdd83b5be5b40375edcbfdc0138fd35323331ac8e6957896544defb37b5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:55 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:55 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-25.0.5.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Mon, 16 Nov 2026 22:09:55 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b02d2c1342fdede36480cad1ac7c696ddc6b490869286036fd4089a888b9c86`  
		Last Modified: Mon, 16 Nov 2026 22:10:10 GMT  
		Size: 90.1 MB (90133589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bc6bab94022cac797136d96dc5a21b3af8f357f333ed269640ccd22758111201
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba60928bac589e4b7cacdffe2daeb0821c842afcca192f702e90c2794489994d`

```dockerfile
```

-	Layers:
	-	`sha256:b86681e68ff79c23001afb0e875b50de54222b427fa7e344c7cd513ea8ddbfa4`  
		Last Modified: Mon, 16 Nov 2026 22:10:08 GMT  
		Size: 9.2 KB (9246 bytes)  
		MIME: application/vnd.in-toto+json
