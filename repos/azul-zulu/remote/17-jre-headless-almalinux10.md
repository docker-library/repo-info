## `azul-zulu:17-jre-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:53ae9d1706721825ac9c21ea1b56cabfb59ba35e2156a477bcfc5e4f66108b05
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:69bbecc000cef21ccaf7196b7cb57cd9a0cd9a2c6121a0b2e45fcbea2dd90401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138503007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66badaff4d79e54690790f1762dd477646bb8d082e5f4f845922b6aa0e6c493f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:28:59 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:59 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:59 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-headless-17.0.20-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:28:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 23 Jul 2026 22:28:59 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994edf37901f6ce490f9adc0ec25dded3239da51beb27359015d78d7829f7990`  
		Last Modified: Thu, 23 Jul 2026 22:29:10 GMT  
		Size: 69.9 MB (69940545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f31636bab9f2de1d3cd3ce3b86ba9558a9eb62899edd328cca4282c251b18fff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79bfe77c242d2c78fa0a6131b9edef5938b3de8df07e79d64b91e2c15e6285cf`

```dockerfile
```

-	Layers:
	-	`sha256:b62566d7d3ed452738c9b1586a14bd027fd9b18790da35b2a03fb723b0903284`  
		Last Modified: Thu, 23 Jul 2026 22:29:08 GMT  
		Size: 9.2 KB (9233 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:4cd06855f91234636cc46f7259467f6b6d2bf6bc7c41b3bc75343a774fd1b8a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.1 MB (137105663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:817cabe1306310d8aa2be928ce1127ab5d1190b4c5dfc16dc5a5b1cf904eafe9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:30:02 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:02 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-headless-17.0.20-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:30:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 23 Jul 2026 22:30:02 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a8cca42daa8e9a108c6a5efe418cf2fd46a45d1e6d9a7b76415831421159ad`  
		Last Modified: Thu, 23 Jul 2026 22:30:14 GMT  
		Size: 70.0 MB (69963702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:22a59668e01e6f899bc5ee0380d76cae546db2a1955e86841abb94bdeffc9923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29c6c491d2f2490ba23059f206b41cb9eb739cc20159b2c1d534a92bc07b785a`

```dockerfile
```

-	Layers:
	-	`sha256:52e0c0e9d76ec76536d6499b676d67eca8a9de5fd4305be5473a50303f8c2604`  
		Last Modified: Thu, 23 Jul 2026 22:30:12 GMT  
		Size: 9.3 KB (9326 bytes)  
		MIME: application/vnd.in-toto+json
