## `azul-zulu:25-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:69429da747687b6c67912732c1a64f2cdc5da1d0d94c0e39b07829cbbc623f72
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:9b91cc8475f015e57a93d0dd5a92bcf14914eb0de2b6f9fbb3f261d8834f2ac1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.5 MB (159489289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9880cca3a05a1bf35d0e4c575455629332beba66385061905c14808ff3bf9ef0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:09:27 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:09:27 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:09:27 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-25.0.5.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 03 Nov 2026 00:09:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 03 Nov 2026 00:09:27 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:128c809bed9422d1b797afb603d5b1ffa42efe3d0a31784d42cf372aa5d5223e`  
		Last Modified: Tue, 03 Nov 2026 00:09:41 GMT  
		Size: 90.4 MB (90390014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f6ae53df6c073dabcd87a5266f98a65eb0abf873c3a4f5bcdedfc1b27217d144
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:709249b72750aa2b976ac3c31ae322442afabfbc18470f6570e96a459f98fbfb`

```dockerfile
```

-	Layers:
	-	`sha256:f37b4efe31e338af22d8506733e5ea73bf808c1f1bd49a3993367f3922b0ee69`  
		Last Modified: Tue, 03 Nov 2026 00:09:39 GMT  
		Size: 9.2 KB (9153 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:4ccb08268e414e94a78a2dae0fa6238361c279290753c9b96da259c9effda430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.6 MB (157620549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99ba6eab47ebc1e6514afd5abe06040b2589cf30464e92cc3a1b9e9d5643f8d4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:09:47 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:09:47 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:09:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-25.0.5.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 03 Nov 2026 00:09:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 03 Nov 2026 00:09:47 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0bea3c6a1226bb6c59aeb8f85bd3eb81f4829810507f977204c4357b9d77304`  
		Last Modified: Tue, 03 Nov 2026 00:10:01 GMT  
		Size: 90.0 MB (89954038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:590fdb21f81f62bb722f1f729e599e76fb874a405a4922a3500aa142edc0e70e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7acdfb625a78241167e3e710c609dbb99580c2278fe31ba1907a1ff6e5b7e1f9`

```dockerfile
```

-	Layers:
	-	`sha256:76b7e031f9f1bb1e543bef4886774901cc908ab826cd1a14377c7f104217941d`  
		Last Modified: Tue, 03 Nov 2026 00:09:59 GMT  
		Size: 9.2 KB (9245 bytes)  
		MIME: application/vnd.in-toto+json
