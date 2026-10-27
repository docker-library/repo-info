## `azul-zulu:26-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:326ccd0957d22047a2e64758a87a7cf5dd3f9d28dfe4542ed78403c1d5d4afcf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:1b4c0f3823e605786d0a8b4446679d6171ba16e09c612a49dabed6e853e52e68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255824851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edce320df927188e78c6920a3530c08b7e4a9b24cf18e47d4e6f66be83e6296e`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:28:13 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:28:13 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:28:13 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jdk-headless-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:28:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 27 Oct 2026 17:28:13 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:28:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5de1dac872194ce1950c3ebe9f1258e0202b7eaeaece28d71c48cf2cb2ceffce`  
		Last Modified: Tue, 27 Oct 2026 17:28:31 GMT  
		Size: 186.7 MB (186725576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:cd610c1fafc1a0e8c28357dd9afe1400e759755e2cfe741fda55712524a8a78c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6964094960381ea2430dc1fdc8a3b3dc53e72f142caa8152827d5ed0a90a9a5`

```dockerfile
```

-	Layers:
	-	`sha256:12c8945c281f8e6d22a18bc7ff73d7e39cf238cc455225380719e4b3b0f8b524`  
		Last Modified: Tue, 27 Oct 2026 17:28:27 GMT  
		Size: 9.2 KB (9241 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:738f76587f094b4847bb23a7ecda22516a578e536b3eae6218945544f0d8f22f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254092406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d22013908e39a19dad4c9af28e3642aef29fbde33cf00bbb35c6999cf6241b4`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:24:13 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:24:13 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:24:13 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jdk-headless-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:24:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 27 Oct 2026 17:24:13 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:24:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d90570577092d4d91c49111fa29f95db21f37c2a58dc2cbbda437f1f8187fc8`  
		Last Modified: Tue, 27 Oct 2026 17:24:32 GMT  
		Size: 186.4 MB (186425895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fa028b78ecd24daa03a335585f77133cf36a609c38e64cf0c78f965045979db0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0602ee229c6795edef2a7bf6caf58e85bcb0583774e42ef64936e8120b7d045e`

```dockerfile
```

-	Layers:
	-	`sha256:1d1c1872a91abba6cc8355ced099de4b5e2fda2124b3d7ab4fec511e357d392f`  
		Last Modified: Tue, 27 Oct 2026 17:24:28 GMT  
		Size: 9.3 KB (9334 bytes)  
		MIME: application/vnd.in-toto+json
