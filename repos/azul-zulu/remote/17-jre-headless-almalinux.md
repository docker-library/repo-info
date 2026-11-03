## `azul-zulu:17-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:2d04fe481f56cd84e66d6d6b222e526f26671be319fad4ebd502e4f612d971d6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:30959498183264fb575519ae41ddd7415a642dfd2b2b0d25f85e3285815336cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.7 MB (139688496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e33ebdbe70cd1f0ffd4f7ce7eceee797872dc3b1763bb0614d4749da5495ddf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:08:27 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:08:27 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:08:27 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-headless-17.0.21.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 03 Nov 2026 00:08:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 03 Nov 2026 00:08:27 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:229618edf490d7ba77cf6cd62226bb362f59384530bf75636c4cd8410c300170`  
		Last Modified: Tue, 03 Nov 2026 00:08:39 GMT  
		Size: 70.6 MB (70589221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3404641f9fe1222cf6fe708b4ae5f290205aa9a37e64d2efbd0a8c65312eae7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4b5fa2036b2c65017b6c957754f0b55a738ac51d90393aed31ed1dd5eab5e2b`

```dockerfile
```

-	Layers:
	-	`sha256:5cc1b226c26ccc2d682f4c9f50bada65104a7f08509360a65ddc1e2542e99d11`  
		Last Modified: Tue, 03 Nov 2026 00:08:37 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:8087abe6942074e6ba455806e5d6ea0f429dbc33721b02030f54986c2dfab728
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138310618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c020934c111e690e069d0dcbb1f7f4c1eaf68e14473a42aafc92f7ac9a63abc6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:08:38 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:08:38 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:08:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-headless-17.0.21.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 03 Nov 2026 00:08:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 03 Nov 2026 00:08:38 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:438cd740a4a499fcb809fe9e26cb4189d5343e429933a057445a275e7de7f82c`  
		Last Modified: Tue, 03 Nov 2026 00:08:51 GMT  
		Size: 70.6 MB (70644107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b07d504e1610e45ba82e5805b682db9f7779a0c4cee2aadc1a06a46e2b2796cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:835de0edff49650fde58a6aaa0fa5b2c9a54a5ae5a4a6a17d48c78365bdb1984`

```dockerfile
```

-	Layers:
	-	`sha256:09a0735c5cce09fd10a4b33e4a53fbd104bfb40455a313b001401906dccf4544`  
		Last Modified: Tue, 03 Nov 2026 00:08:49 GMT  
		Size: 9.3 KB (9342 bytes)  
		MIME: application/vnd.in-toto+json
