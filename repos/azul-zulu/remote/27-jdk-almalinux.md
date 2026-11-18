## `azul-zulu:27-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:d388733bd87f2ec5349bc2e75097b71f2e6ad9bda9fbb37a24658d23533545ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:aa7293a5727825b56120f3a47057c8a23ecda6c826053b50809ca3b4e411ab6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.0 MB (255003040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09cf5cb4d8fa178e7120eab211330ebdbd6dc232054ced9c4a605d5760475cb`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:43:44 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:44 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:44 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-27.0.1.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:43:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 18 Nov 2026 02:43:44 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:43:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b874cad33f974f24fbca3cd24ee1118842e3ebda59f1680bec6c88e06a693d`  
		Last Modified: Wed, 18 Nov 2026 02:44:02 GMT  
		Size: 185.6 MB (185632560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bc5fdfd3a78ae89055690d10b89e35a53df1ac015c39a1e169ec144fbccc3ba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:552efaffd96d434eb76894de87839a8eb8225b7a190e95d373138430a2550807`

```dockerfile
```

-	Layers:
	-	`sha256:69eff80891375ef4cfd46e17466e4501535ab6b983e38f9db4b98f55e435d5cb`  
		Last Modified: Wed, 18 Nov 2026 02:43:58 GMT  
		Size: 9.5 KB (9485 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7be5e8e63a42381a9f3c88bde773b8e202978668b932f80e3f9c9c65054941cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.3 MB (253253698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbbc523f571ccf71dca84fc6dd0f8b78ba9d018c973091db5e8c147d3dd3e7df`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:43:46 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:46 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:46 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-27.0.1.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:43:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 18 Nov 2026 02:43:46 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:43:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:558d24a0f8e8f0e582e84ef00f69ce184a5e6ad3055727be90f2af0a9cc632e2`  
		Last Modified: Wed, 18 Nov 2026 02:44:06 GMT  
		Size: 185.3 MB (185303124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:02c762ef12e410e2fd2861c27a99bad83771ef31e1c6e7a95540a096745a140e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71eba18d3b6efb77ec07fe69b1666f255e48c5a07d55b91e4fbf762c7fff6d58`

```dockerfile
```

-	Layers:
	-	`sha256:45da0bc5b5760d777aa8976f94fc326e566916c8ffb23e929665763c36179804`  
		Last Modified: Wed, 18 Nov 2026 02:44:02 GMT  
		Size: 9.6 KB (9589 bytes)  
		MIME: application/vnd.in-toto+json
