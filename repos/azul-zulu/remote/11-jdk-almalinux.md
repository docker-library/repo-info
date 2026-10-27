## `azul-zulu:11-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:fb4faa0f9625d0d76de9335909502a80265aeaaac22bdec0893b8d4f66bc401b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c62b5d298946ab48e98b4b9ee7b3beac4dc4cbf3bb35b4a649ac1a6fd3232273
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.7 MB (216663358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d9a847f0cd16fd032b3dc629e9b580afa090349882737a949ff760421f3d74`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:27:09 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:27:09 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:27:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-11.0.33-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:27:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 27 Oct 2026 17:27:09 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:27:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cb0d92533d52292d45e23e410b2cd87e064886f875b6765bc7d65c4f8d4d039`  
		Last Modified: Tue, 27 Oct 2026 17:27:23 GMT  
		Size: 147.6 MB (147564083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f1d184911c4988b4157ca8e5caedd6581cbc6a3fcdac45571ab7e46e99133fb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:195277c0767b6fec9192d99bbadf1f252a9db9f14e63c70e528d58796b56e486`

```dockerfile
```

-	Layers:
	-	`sha256:fcbb1abfbbbad60f6aa5c9f72f9d1bad41d89764de8d4b98eb4200ff9bfb0017`  
		Last Modified: Tue, 27 Oct 2026 17:27:19 GMT  
		Size: 9.5 KB (9482 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:13feb1cf7f01062adb708788895e351fca379b598d98f4cd9af0aeec6bec3f34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.9 MB (214921237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd692387f1bf4d62eed3c0bae339c809511a2d9c4bb3c77544b35af361f7143d`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:22:26 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:22:26 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:22:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-11.0.33-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:22:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 27 Oct 2026 17:22:26 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:22:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d78ca31f98005a98b3dd741190dd8b16b9f592b8627a7a20242fc93e8c5eda8d`  
		Last Modified: Tue, 27 Oct 2026 17:22:41 GMT  
		Size: 147.3 MB (147254726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:95ee89b42185c0fc2d8b37ad94ee4e2971df604c03e8c24f925af1ba3d926858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21850a2892105a0d977d4c76ade309cb44050035fef2eb8d54a2883cd988cf8d`

```dockerfile
```

-	Layers:
	-	`sha256:b4d1f1234a3dd45abc34665eeb083239b59fb74763950f16b5db58bf6b59650a`  
		Last Modified: Tue, 27 Oct 2026 17:22:38 GMT  
		Size: 9.6 KB (9586 bytes)  
		MIME: application/vnd.in-toto+json
