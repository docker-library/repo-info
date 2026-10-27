## `azul-zulu:11-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:3361f0a53b4c557ba82f8da88280bf93fa9db3dd38c33eb3d8330fd9c1cc7f75
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:da6253a893df7daa25e5afc7f59859206f18f1592b1dd5fa9a56ab22ebe4911b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135160428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c7b6defecf0a62da3ddbaa9869e81785c79ef9b7345664eac7ee511564c292`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:27:07 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:27:07 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:27:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-headless-11.0.33-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:27:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 27 Oct 2026 17:27:07 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32f2a032720ea624444d61844d6a40a056545ef401ac2db8ef22824b7d198574`  
		Last Modified: Tue, 27 Oct 2026 17:27:18 GMT  
		Size: 66.1 MB (66061153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:39ceb1da4423597dfe8a93b76c67d4449620ae8140eb8f1447d7127a9de5cea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:312546c0bde3cd3a5ae1a695cea6ea6800dc891413d9fb92091e9221bf62eca6`

```dockerfile
```

-	Layers:
	-	`sha256:1ff45dbfb94613fd20190680b95009fc772ec0c80cfdf48eb2ff913084b0b6cc`  
		Last Modified: Tue, 27 Oct 2026 17:27:16 GMT  
		Size: 9.2 KB (9234 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:133b2b37baa2f9cf7de58915d844453c9ca07ff3b761c2cfbb52d7fe099f4f9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.6 MB (133550415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b61bd9b8fb7b929ec80006e2e97ef65d53bd0bb22ef33aae81e4b9ef552036`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:22:46 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:22:46 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:22:46 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-headless-11.0.33-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:22:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 27 Oct 2026 17:22:46 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6965b06085c4a5359ecd594f7d2d02ea9b006b51f238c636264998a61ade2917`  
		Last Modified: Tue, 27 Oct 2026 17:22:58 GMT  
		Size: 65.9 MB (65883904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bef2c4a306547847137e25bb498339787a56067678bedcb6e078d44dc4f136cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a534dff393a36ade2f7d979dd3ce609cdafdbad2e6b2a187f3057ce62fe3b6db`

```dockerfile
```

-	Layers:
	-	`sha256:30f4ad5bf6d67b8b2ad865e04e845c27c4ae68ca98236631ccb2593b1803e8c8`  
		Last Modified: Tue, 27 Oct 2026 17:22:56 GMT  
		Size: 9.3 KB (9326 bytes)  
		MIME: application/vnd.in-toto+json
