## `azul-zulu:27-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:bd41288733a47871f1581006f901b0e371beb8f335a643c06e63f222e3738544
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8ec7839021c70057a05226ad6c21a8bbeba9df7b759cb3841cacbe41f81df53e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.0 MB (160027915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b579a051e8f79a9ac649c7e10688abc84e9bc5a821d3db0fe2c80f1d5af61615`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:10:27 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:10:27 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:10:27 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jre-headless-27.0.1.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:10:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Mon, 16 Nov 2026 22:10:27 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d244b720d6a2be50663ddcc1c2fe5665dee868ea787232ecf0f9dd85bc64578`  
		Last Modified: Mon, 16 Nov 2026 22:10:42 GMT  
		Size: 90.7 MB (90657435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9415fdbe8e7bc57b3e9a96b67e6d7a805cbee9c4c425527837b470e9c9131aca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84a3e59ce947f5067591612a2914efa729cddde88359466600279fc349ceb0f7`

```dockerfile
```

-	Layers:
	-	`sha256:7455006c5a042625b083801fdf09e9d1468154f02b576159f14286773dcf4260`  
		Last Modified: Mon, 16 Nov 2026 22:10:39 GMT  
		Size: 9.2 KB (9247 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:9d8d84180eca6a1b0961946b047597e880f013dbb17b05c11e48ef40e87095e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158500730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ed2bfcd83cc5de69c663dcfe04ff53a304c0b32a1911687e3ddbbd167ee613`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:10:29 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:10:29 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:10:29 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jre-headless-27.0.1.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:10:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Mon, 16 Nov 2026 22:10:29 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51811deef0317974039d7a3f4c74eb3485dba295554bb8d3cbee1784ca09f02f`  
		Last Modified: Mon, 16 Nov 2026 22:10:43 GMT  
		Size: 90.6 MB (90550156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:70b42df21108b1b8539a9826d25aedce7a92e1011ea6b3a7a09dccbd9932da17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1018b9164001252bdf935e7ea33e5f7bc8afd8e58043cc7e91e9af8bc99a862`

```dockerfile
```

-	Layers:
	-	`sha256:717bb4861f40f2391f93fb33c7cf8bb2c20b74298c64defd4dda7df4083a54ad`  
		Last Modified: Mon, 16 Nov 2026 22:10:41 GMT  
		Size: 9.3 KB (9338 bytes)  
		MIME: application/vnd.in-toto+json
