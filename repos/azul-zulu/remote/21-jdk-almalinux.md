## `azul-zulu:21-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:e5297ea508cb005ec7367e6ab6ad1a4ffb0f945f172209ce284223a1f0034a9d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:1b2aed3ce72cb427fd71e0873a4cff4ddf488ac0b38b0affd7e86a6c36d0eb1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232920008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:559235bc95a3def1fc738578479767b3c48b9cd3ae54e967d3ea3895e3c1fad4`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:29:39 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:39 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-21.0.12-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:29:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 23 Jul 2026 22:29:39 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:29:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c8f7ca2fd8c82c2b6ada96811675e94c9d8385fe60b46c228fc7108c4f82e5b`  
		Last Modified: Thu, 23 Jul 2026 22:29:55 GMT  
		Size: 164.4 MB (164357546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:89c9798e4736c7218c4e1a527a1d243b7652d85a5b048c63e6ab9a11c945717a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d96d0dd870f808c7c8d8c874835d4c6b6f2cf6b1e7ec184b5c1083f54fd5c2`

```dockerfile
```

-	Layers:
	-	`sha256:8ef1ab9bf0fd40a3650daf73b84bcf7de5e6ba93937948ba087005c70a374865`  
		Last Modified: Thu, 23 Jul 2026 22:29:52 GMT  
		Size: 9.5 KB (9482 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:2527be92ec4128f3c4b61fff793afc18d5471d2ad35d1ebda549e0319dc79b8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.8 MB (230774758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd3de323cc7c3d8a98c2592f1678c99e1ae07b7c3ffe131f11a0eff2154cc3de`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:30:37 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:37 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:37 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-21.0.12-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:30:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Thu, 23 Jul 2026 22:30:37 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:30:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73e5f6fa414a7ae22e5fb9aa665fe941ede5128b2d8a58f39096d885bca878d4`  
		Last Modified: Thu, 23 Jul 2026 22:30:55 GMT  
		Size: 163.6 MB (163632797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6eec89d1bfe749e5940181a9ecace9a609fd277af757b45900a3b323a113b060
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:351f6058766560cbcfe7e1c2cc2ec1123f442119c522e1c65f1527bb2498ae8e`

```dockerfile
```

-	Layers:
	-	`sha256:ecd5d6e0b6ec929213a1c15f5b13d2f0bb9763720f577f010d121bd800c7f5b5`  
		Last Modified: Thu, 23 Jul 2026 22:30:51 GMT  
		Size: 9.6 KB (9585 bytes)  
		MIME: application/vnd.in-toto+json
