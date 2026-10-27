## `azul-zulu:17-jre-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:b6759133e25167062afcfc5a228ca02acf1a2eeb7e68588b100672c30dad3b21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:2cb23325277475d94a0d387286d510faae9dd49d355fb30e2ddfabab117ea6e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.7 MB (139691907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dea29867c88e994004dc71d23482aaaf380492d502f927038bb38ce49a13858`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:27:31 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:27:31 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:27:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-headless-17.0.21-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:27:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 27 Oct 2026 17:27:31 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ad444b488450844ad49ae9eab4c94ebbf25b16131fab9cb20327d9eb9112f5`  
		Last Modified: Tue, 27 Oct 2026 17:27:42 GMT  
		Size: 70.6 MB (70592632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a736f5819c10c1a99ba2aed6b44003dbc3c495b4f3189e434615ca6ee51ebd09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:607c0cb3be5d28f99dd547032e1f0368a7e187f9623a16f8f0ff87724a8cac6a`

```dockerfile
```

-	Layers:
	-	`sha256:490b60168b47ea04bfe9da4861b41333f4909c2642a4d75f9e783313bc15b700`  
		Last Modified: Tue, 27 Oct 2026 17:27:41 GMT  
		Size: 9.2 KB (9234 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:0b64c27c647135bda76f583a5b923d0d8ef4c3808e2eda1af6911928c57a7dc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138314525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0501521ee1931cf1dec8eb15fdac8cdfe1d349a761349d215db49a0910b6b0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:23:05 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:23:05 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:23:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-headless-17.0.21-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:23:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 27 Oct 2026 17:23:05 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234d03eb319fef41d55edff77d03174cf347972ab08b41908d0edfd0b4ccee8c`  
		Last Modified: Tue, 27 Oct 2026 17:23:17 GMT  
		Size: 70.6 MB (70648014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:43d208a5d1ce5ef3d69566a724163daad1d7ada4b8fa615834c67c6b93400ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:716c232b5327f30b1831c063b38832aa1fe8ffcdeb5e5ac41d13d5f189ad340a`

```dockerfile
```

-	Layers:
	-	`sha256:a5ecf1d2b17645b0e2523608bb34f6a728b17925a50b664a930183c943fd99e8`  
		Last Modified: Tue, 27 Oct 2026 17:23:15 GMT  
		Size: 9.3 KB (9326 bytes)  
		MIME: application/vnd.in-toto+json
