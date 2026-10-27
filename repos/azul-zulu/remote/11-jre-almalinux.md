## `azul-zulu:11-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:bbeb3f494dea2989665e0f66d5adbfdf159544715c8db0d882eaa3ee9834263c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:dd58c558ebae716b79b1fdab5bf8701c88eb9216478b528abbc230a839a55626
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 MB (135590969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5e69ae70a1b69c1d2fdef549f53e66c3bd91fb464d2ebaff690410fdde0241a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:27:05 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:27:05 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:27:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-11.0.33-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:27:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 27 Oct 2026 17:27:05 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7fa03f982001829b802bc4bbe0ebe498659682231adbae10fae4bc5ab0eec81`  
		Last Modified: Tue, 27 Oct 2026 17:27:16 GMT  
		Size: 66.5 MB (66491694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:cfdfc981373219d31bd07e05c4adc76dfc5a3663ef5c3ef3f6dcedfc475770fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d436e08ee6f417455d15ccc53607cdfe36731a65dd1264a70dc6b327435062`

```dockerfile
```

-	Layers:
	-	`sha256:530c45bd850fae622b757a716ba05d99eb88b75963864d43631882418ff9f08e`  
		Last Modified: Tue, 27 Oct 2026 17:27:14 GMT  
		Size: 9.1 KB (9141 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:633dce32490c58603a1d14548daf2f7ae9d55d97bf8e2e91eea74fa8c3928ea4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.0 MB (133979584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:892b3ea2f75a9eb276e50861ed281cd77a279bab398e67ab85d7282db3dd9315`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:22:41 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:22:41 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:22:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-11.0.33-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:22:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 27 Oct 2026 17:22:41 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef13be3d07b838c74b8d9b20a5c9300847018e49280335758865188b394a48f`  
		Last Modified: Tue, 27 Oct 2026 17:22:52 GMT  
		Size: 66.3 MB (66313073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7c3159b3cab839a5966b775f92b82697930d3eb05997b7bb60a36e9fcb1bcd06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbf1d13459915edc52ea847697a5dd3e0d3d98aa003e3d3bf1de7e2ee49e38d`

```dockerfile
```

-	Layers:
	-	`sha256:5074453602d83cd345e1b4e1796711eabe51322778f5b362f8da7068f3eca36e`  
		Last Modified: Tue, 27 Oct 2026 17:22:50 GMT  
		Size: 9.2 KB (9233 bytes)  
		MIME: application/vnd.in-toto+json
