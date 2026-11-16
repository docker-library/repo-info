## `azul-zulu:8-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:c62715d5d9a7a79ad2242689b22b7bdfd026268cf63196221085ac82c1e4d8ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:bf6f8c64664aa557cd01d22c467ff5f94e9dffe3cff7970f57b26395a1b31c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133107077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6df0eeaad3e8fc8007c107a81930cc8a9650dbdbec75424942d7b4038663818c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:08:42 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:08:42 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:08:42 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jdk-8.0.512-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:08:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Mon, 16 Nov 2026 22:08:42 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354b5beb2f41ac937c341363d3f330e089e65a6d268ae87b407004e7f89b5d94`  
		Last Modified: Mon, 16 Nov 2026 22:08:51 GMT  
		Size: 63.7 MB (63736597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ef242aa0423c4c556b69a93e2f9a25a3cad832bff7efc599ab47bdcd5ed5a908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f0277cf66c88d2ba8aa9cee30247fe475920607bc3befb5f26c5802922897c3`

```dockerfile
```

-	Layers:
	-	`sha256:835749d2099059eeb441e1466db22925a38e3908bdc1d84a108448836310a4d0`  
		Last Modified: Mon, 16 Nov 2026 22:08:50 GMT  
		Size: 9.4 KB (9445 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:46e79030c11678395171308e571400110a266913f51119910cf5a2b48f32615f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132038777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:053759449d6fe8cf0b014866ffd9b9ec42e1ecc4f51bdd74ec211d3f6584ac9c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:08:22 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:08:22 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:08:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jdk-8.0.512-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:08:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Mon, 16 Nov 2026 22:08:22 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f9eb707475d98a7369d0fb62d103b8896336cb4df8d0c527f3362da3e8993eb`  
		Last Modified: Mon, 16 Nov 2026 22:08:33 GMT  
		Size: 64.1 MB (64088203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a2e651e6584b84a60fb253b85ab4a1fb7a1c581a14986c88d3105866e5e7874c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c802614d5231af849b1154a9877d4c30c7ecd481b0be0364d346f55dc378febc`

```dockerfile
```

-	Layers:
	-	`sha256:ea76362ece198b8d66682401dccd51b9c55e11e3bdbc255e7cba0959f2e5c434`  
		Last Modified: Mon, 16 Nov 2026 22:08:31 GMT  
		Size: 9.6 KB (9550 bytes)  
		MIME: application/vnd.in-toto+json
