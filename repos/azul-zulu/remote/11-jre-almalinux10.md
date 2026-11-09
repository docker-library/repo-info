## `azul-zulu:11-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:e87526f6c365ceafc8463656e72eca4e969938e4a3fe18bb3d8bf12921a3dbae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:3535035b9c84ea0515ca5239c55a8901fac704c55679710ac54cf240e34d4f16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 MB (135588190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbe1780619784585d052b8f4a2fc4482b066da3a1c5cb233abc9074ed0ee551a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 20:22:11 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:22:11 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:22:11 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-11.0.33-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 09 Nov 2026 20:22:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 09 Nov 2026 20:22:11 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba244c077b8d91174654d3db0da9d205033ce086c85df00ed16eac9c9e95d6e`  
		Last Modified: Mon, 09 Nov 2026 20:22:22 GMT  
		Size: 66.5 MB (66488915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ef88c736ca0f5a3d193da3effa4f66b4211c71ee428933edadfa54bfcb6362c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e470bff338efbfcd568ef6f8379757474acd9b4ab3c8ddc00a7818026b80e63`

```dockerfile
```

-	Layers:
	-	`sha256:296ec7808b00f61a058181b1bb7b1ad053ff32387780fb004d7dd197d5a58848`  
		Last Modified: Mon, 09 Nov 2026 20:22:20 GMT  
		Size: 9.1 KB (9141 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a6f9c0b4aaa59a136c6c7493015c7efcd17bf61b010897761272640b23bbc856
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.0 MB (133976401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7f63408c8e91f0729ceca199044ff93edd6aadf77dc7509af03312b6df465b1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 20:23:57 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:23:57 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:23:57 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-11.0.33-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 09 Nov 2026 20:23:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 09 Nov 2026 20:23:57 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1d50361003a38a477e74d7ef12e14bd24438d7ac2366a9e1fa74cd8ba5fa1e`  
		Last Modified: Mon, 09 Nov 2026 20:24:08 GMT  
		Size: 66.3 MB (66309890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c3c506764c052f0c3bbe6b8d7e90b07bb140a9c7e843e293d26a67eed5355dff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49ac361d192f27d270a41ce67cd6e550e221e3e2baf97f9cfe8f32659d4fec10`

```dockerfile
```

-	Layers:
	-	`sha256:8a672f2ad5d0a264e4576516953c9ebf7443f65ec5f1e3b1e80e2f18ca2c0e2f`  
		Last Modified: Mon, 09 Nov 2026 20:24:06 GMT  
		Size: 9.2 KB (9233 bytes)  
		MIME: application/vnd.in-toto+json
