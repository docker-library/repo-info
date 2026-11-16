## `azul-zulu:26-jre-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:65a92a3a9a5ee285b923d624ecfd624879af40639cd92f346ae93dc57b7c011f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:1910347ce166fe5ad0d8c665ef876189705b58aaf6f6cb0b4da68303bc1dd6c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160711495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80219dcbe74330d68f3ee8d127b77015af750d1b7a092e31d3b399d8249c195f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:04 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:04 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:11:22 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:11:22 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:11:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-headless-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:11:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Mon, 16 Nov 2026 18:11:22 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcc221df83f83be993de1781d1aa56f0e68473e209ec3f2aa405713aeb2b3d3d`  
		Last Modified: Mon, 16 Nov 2026 18:11:35 GMT  
		Size: 91.6 MB (91585716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:df43d0682e4c839157a17cb2deb98870b0b2d9351cfed7300ef7e12c60be3143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79960ef17541845820484eaeab074a500f0f8d6226ed050d0857a0970ba9e30`

```dockerfile
```

-	Layers:
	-	`sha256:a386f35a229400d4a2ec620378740f052fd52f2e6ed22547b9ff2847df4bb859`  
		Last Modified: Mon, 16 Nov 2026 18:11:32 GMT  
		Size: 9.2 KB (9237 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3f12670a8f6dcf2aa767bbfdbde5cc10d7a46e292a3a06898d1a7e78979afc57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.2 MB (159199614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81f4baaef123d45b746ce19ed43e8b8c54ca06cbdbfaa174924a75aa222d4b01`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:11:13 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:11:13 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:11:13 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-headless-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:11:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Mon, 16 Nov 2026 18:11:13 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4b5f91e6dd33753924eb241ef440f9715969f1761df4fb6828f81144699aa1d`  
		Last Modified: Mon, 16 Nov 2026 18:11:28 GMT  
		Size: 91.5 MB (91501798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:cc48294d0b136a8d23ac9347934d9d178118c41a8cb32c5ea1cd12583520f9f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8ac287a482157b10c665aca5d50f9339d244baea29b0cb0446e376389096e40`

```dockerfile
```

-	Layers:
	-	`sha256:be5ad9b40f994ff7ca1d21f12813dccd2406b358a4686216858992238b8b451d`  
		Last Modified: Mon, 16 Nov 2026 18:11:26 GMT  
		Size: 9.3 KB (9329 bytes)  
		MIME: application/vnd.in-toto+json
