## `azul-zulu:11-almalinux10`

```console
$ docker pull azul-zulu@sha256:3dd0f05d177ab82251cc5df44e69245ad8ad280f64e56927d1d7ca36967ece9e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:3e87f906c0e1d0a9730907370d12fbfc5211a94b3955dd9884c220dade9dcb5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217145028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abadf33c08314fdeea56dce1aa9a520f87aed71e0acbf3283d879da1cee575fb`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:41:03 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:03 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:03 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-11.0.33.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:41:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 18 Nov 2026 02:41:03 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:41:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492584e36693dd72c2086344b6d15e9f1eb89ba044b2776eaa31072f96747416`  
		Last Modified: Wed, 18 Nov 2026 02:41:17 GMT  
		Size: 147.8 MB (147774548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:cb956b582dcd0c243f026443976f21dea773591776d75eea661b73c283608ca8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4029156f2bdc2b55067b1d0c9896f5226a9babdc8fc53222008449e81153ddf1`

```dockerfile
```

-	Layers:
	-	`sha256:ba36df1835742466fd8549621e6948c319ccccfe9f383e2167d5f151d2bc2946`  
		Last Modified: Wed, 18 Nov 2026 02:41:13 GMT  
		Size: 9.5 KB (9488 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:655fe120d5dbcbd7d8ffebcb414b7778c11affdd1ebfc7d69986275965b7d77e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215403677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fc6afed454578d5cccfc0917b093496252f45bc16fe75830aa7d73117491d1a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:41:07 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:07 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-11.0.33.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:41:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 18 Nov 2026 02:41:07 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:41:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf9bca7045374b75d08c6867c0ae0302032e1ad846670cadf3b21c67cc2b70f`  
		Last Modified: Wed, 18 Nov 2026 02:41:24 GMT  
		Size: 147.5 MB (147453103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3ba78a0c3fd5148e0a5a943decfeb2a55d7d7fbff602540c8f2ec0bc6c92989f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42d5eb69d7c48f394f23002801c813f2388f91c364c267c6948f6445989a7e2f`

```dockerfile
```

-	Layers:
	-	`sha256:22643ab180cbfaac73be5d3663483a0c86eae8fce61e8eaf64fc6bcad4c61efe`  
		Last Modified: Wed, 18 Nov 2026 02:41:19 GMT  
		Size: 9.6 KB (9592 bytes)  
		MIME: application/vnd.in-toto+json
