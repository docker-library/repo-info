<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.18`](#kibana81918)
-	[`kibana:9.3.7`](#kibana937)
-	[`kibana:9.4.3`](#kibana943)

## `kibana:8.19.18`

```console
$ docker pull kibana@sha256:99dd7d8e0165a50dccbbb4830a025d3df1a231c9c6b3835312a5b9c496bb20ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:8.19.18` - linux; amd64

```console
$ docker pull kibana@sha256:f64e9447dc0816b9c769ae36e6d4a8d181d3857bf95b7cde0ce8566113ae8e05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **457.2 MB (457171075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb1311482cc1635f7779b22551b8a309d7a818d561aba9b965939d28878a269b`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 20 May 2026 01:37:19 GMT
ARG RELEASE
# Wed, 20 May 2026 01:37:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Wed, 20 May 2026 01:37:19 GMT
LABEL org.opencontainers.image.version=24.04
# Wed, 20 May 2026 01:37:21 GMT
ADD file:46ac5b8ee4c64ad9ebe840abd5619f571a617ac19483764d47d0eeba7907934f in / 
# Wed, 20 May 2026 01:37:22 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 23:25:41 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 30 Jun 2026 23:25:41 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:33:40 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 30 Jun 2026 23:33:40 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 30 Jun 2026 23:33:40 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 30 Jun 2026 23:33:41 GMT
RUN fc-cache -v # buildkit
# Tue, 30 Jun 2026 23:33:41 GMT
WORKDIR /usr/share/kibana
# Tue, 30 Jun 2026 23:33:41 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 30 Jun 2026 23:33:41 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 30 Jun 2026 23:33:41 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Jun 2026 23:33:41 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 30 Jun 2026 23:33:41 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 30 Jun 2026 23:33:41 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 30 Jun 2026 23:33:42 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 30 Jun 2026 23:33:42 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 30 Jun 2026 23:33:42 GMT
LABEL org.label-schema.build-date=2026-06-26T06:55:50.831Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=8b2d519956d8e256d1da1a46185994fee710c3b8 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.18 org.opencontainers.image.created=2026-06-26T06:55:50.831Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=8b2d519956d8e256d1da1a46185994fee710c3b8 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.18
# Tue, 30 Jun 2026 23:33:42 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 30 Jun 2026 23:33:42 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 30 Jun 2026 23:33:42 GMT
USER 1000
```

-	Layers:
	-	`sha256:cb259a83ac3dd9fea0b394df41df2b298adf0df938fef5999475af18a751c257`  
		Last Modified: Wed, 20 May 2026 02:15:22 GMT  
		Size: 29.7 MB (29732805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4febed2992e7ac11c15746e4b3230253374807e86047e979fce2655a1b2618c`  
		Last Modified: Tue, 30 Jun 2026 23:34:43 GMT  
		Size: 11.8 MB (11800039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1b535ea48731a162d9f6b7afc8cafc36badaec52ca0420c3cc12f049d643789`  
		Last Modified: Tue, 30 Jun 2026 23:34:51 GMT  
		Size: 399.0 MB (398994222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3430f55661e426d7c1d6214163bf2aaaf5e3bedf3ba3c62214682dc76737b69f`  
		Last Modified: Tue, 30 Jun 2026 23:34:42 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5682c0231b74baa47a1bb076bccbbfbef543343fb37fa8e71a209f7962e3b81a`  
		Last Modified: Tue, 30 Jun 2026 23:34:44 GMT  
		Size: 16.5 MB (16460474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8d471b850cf5eb4319bc5f1f3d984c05f3adca7ae9dfee8bc3589ca18537d80`  
		Last Modified: Tue, 30 Jun 2026 23:34:44 GMT  
		Size: 5.2 KB (5248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3344ed65426fc72b9afcc56a884e5a62e810bb2d486fcde7d3eb7933c70be9`  
		Last Modified: Tue, 30 Jun 2026 23:34:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179624183ebb283ca8dae639aa0375010357afd889b54968753bbed04ba52662`  
		Last Modified: Tue, 30 Jun 2026 23:34:45 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8cce18f84afeab5152062b03ea551773c8f30b173ec571f6368651b9842ead7`  
		Last Modified: Tue, 30 Jun 2026 23:34:45 GMT  
		Size: 4.8 KB (4823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7514656c19d3d0d8cabe6a9724c0cb95d51b0af4aab85c8ac9fdcb392bbf8d7`  
		Last Modified: Tue, 30 Jun 2026 23:34:46 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6432b59533a425f4d807290d8bb78ed7d944c5b32ca1c1c2717eece67dd43c`  
		Last Modified: Tue, 30 Jun 2026 23:34:46 GMT  
		Size: 161.7 KB (161744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:625df51eff799d879810782899f30d9bfa68ff7e110975048821a73426eaa02d`  
		Last Modified: Tue, 30 Jun 2026 23:34:46 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.18` - unknown; unknown

```console
$ docker pull kibana@sha256:aaec4729c1ce1c5fb27d54514882dffadc633ab3721af1b0fe417ee2f5df57e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4964544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30478161c64a3705b4280e22f4c843bc2297fcdeff194ef31003540d865cf69a`

```dockerfile
```

-	Layers:
	-	`sha256:9b6d6a22b9ac1762da1838da883cd966075c18e25cf1f722f453b905e9ee100c`  
		Last Modified: Tue, 30 Jun 2026 23:34:43 GMT  
		Size: 4.9 MB (4923617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67dad67fb0c4f044b329a57799d05b39b1472993d4d29e0c563767f877a78ebf`  
		Last Modified: Tue, 30 Jun 2026 23:34:42 GMT  
		Size: 40.9 KB (40927 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:8.19.18` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:1ed178704213e14f5ceff303d99545ed8c503a786fbdcaaeb8c773cf5106ee65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.0 MB (468989200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b53db2c7e986d7c8251c98aefbe9182d84383071f1ee36aada4b0840f388bf88`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 20 May 2026 01:37:31 GMT
ARG RELEASE
# Wed, 20 May 2026 01:37:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Wed, 20 May 2026 01:37:31 GMT
LABEL org.opencontainers.image.version=24.04
# Wed, 20 May 2026 01:37:34 GMT
ADD file:08e1f650999ca51d9b63c782d658d9485c64263966d69dc423a3b64a16449f00 in / 
# Wed, 20 May 2026 01:37:34 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 23:25:10 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 30 Jun 2026 23:25:10 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:31:57 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 30 Jun 2026 23:31:58 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 30 Jun 2026 23:31:58 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 30 Jun 2026 23:31:58 GMT
RUN fc-cache -v # buildkit
# Tue, 30 Jun 2026 23:31:58 GMT
WORKDIR /usr/share/kibana
# Tue, 30 Jun 2026 23:31:58 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 30 Jun 2026 23:31:58 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 30 Jun 2026 23:31:58 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Jun 2026 23:31:58 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 30 Jun 2026 23:31:58 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 30 Jun 2026 23:31:59 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 30 Jun 2026 23:32:00 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 30 Jun 2026 23:32:00 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 30 Jun 2026 23:32:00 GMT
LABEL org.label-schema.build-date=2026-06-26T06:55:50.831Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=8b2d519956d8e256d1da1a46185994fee710c3b8 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.18 org.opencontainers.image.created=2026-06-26T06:55:50.831Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=8b2d519956d8e256d1da1a46185994fee710c3b8 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.18
# Tue, 30 Jun 2026 23:32:00 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 30 Jun 2026 23:32:00 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 30 Jun 2026 23:32:00 GMT
USER 1000
```

-	Layers:
	-	`sha256:fff3795b437199a0b714aadba6fb2c251d7da853c3e257d3fed1d2c8d0f05158`  
		Last Modified: Wed, 20 May 2026 02:15:29 GMT  
		Size: 28.9 MB (28876406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e730977a0b770b9efb57f513249a3d055ada44aa5f0db30f042c827efcaca48`  
		Last Modified: Tue, 30 Jun 2026 23:33:08 GMT  
		Size: 11.6 MB (11633098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:784aa628d56482c2b1941ec7dcba70913054ab867bb695bb2bc35d2f4b694937`  
		Last Modified: Tue, 30 Jun 2026 23:33:16 GMT  
		Size: 411.8 MB (411839600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6038c86c10c2d3d7cd6e2b14b4f7c43e926aedfb72bc8305d8117a678931dba`  
		Last Modified: Tue, 30 Jun 2026 23:33:07 GMT  
		Size: 9.1 KB (9098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df31039c001cbf56c6b3e6283755786c7762b575ebf41866d2a6faabc1cb1a39`  
		Last Modified: Tue, 30 Jun 2026 23:33:08 GMT  
		Size: 16.5 MB (16460490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c458cdc66b823c4744fb073fd8b28f42f5df69641f7a15259c7dc52d2d9a26ba`  
		Last Modified: Tue, 30 Jun 2026 23:33:08 GMT  
		Size: 5.2 KB (5241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78781b66695fe6c28aee3f51513ed926b3b821e613fdf25ec4c29080c88a84a8`  
		Last Modified: Tue, 30 Jun 2026 23:33:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4915a4fda0eca4eb81f8965355151d3b8c1139ab0992f171b572c1d9f6a8cf37`  
		Last Modified: Tue, 30 Jun 2026 23:33:10 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e87a0729760ff1623c72064b5062003897459f3b21ab6be4dcdbd71580f685b`  
		Last Modified: Tue, 30 Jun 2026 23:33:10 GMT  
		Size: 4.8 KB (4821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38a022bc0b7b3484c2960166178d713ff87c11bfd1e18519e8cd0776d9552b68`  
		Last Modified: Tue, 30 Jun 2026 23:33:11 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e1de1ebb3e585ec15b292a268bb77d41e82109611087edf359deef73389bbb`  
		Last Modified: Tue, 30 Jun 2026 23:33:11 GMT  
		Size: 158.3 KB (158261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc7d1dc74605502a886a5538f79ecdb6fcb4b04059e0b9919a8a8920e11a8e0`  
		Last Modified: Tue, 30 Jun 2026 23:33:11 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.18` - unknown; unknown

```console
$ docker pull kibana@sha256:6f8e319031857e30f1470446de795938d2cbddb256c7fa2f60d1d1f1bd685afa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4965856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a316a70c6483bed1238adedc76eccb9adc63e14ee172552680f0b4fd0858a36`

```dockerfile
```

-	Layers:
	-	`sha256:c3f2f38d47e4e3dea07020c3aa5ee156167000351df85f5d275c2ef2f83f7167`  
		Last Modified: Tue, 30 Jun 2026 23:33:07 GMT  
		Size: 4.9 MB (4924681 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a858b2e8639ee825e976d4df206f0763e12f5accae4d71534444fab7a7123a8`  
		Last Modified: Tue, 30 Jun 2026 23:33:07 GMT  
		Size: 41.2 KB (41175 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.3.7`

```console
$ docker pull kibana@sha256:fddab59c9997ebdbab587215d8a1fa56a3cc8f264ee4633a34b90af1f91cdec1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.3.7` - linux; amd64

```console
$ docker pull kibana@sha256:0e77333ccbebe8497eed1bca748c130c6f5d845923893b617b0aa8184940aefe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.2 MB (466167185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66c8c62acde506542aeb2644389a6dee46dcbf4c76f20a6950e05c8b1b7f121b`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 30 Jun 2026 05:29:32 GMT
ENV container oci
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:efac128f83583a6247aea2e1de3f354267a91fa9afbb47889a2bebf40b22f4af in /      
# Tue, 30 Jun 2026 05:29:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 05:29:33 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:041b210b17febe96db30cba4f2b22eb7e05f976482f5a304098344e035b1cad8 in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:041b210b17febe96db30cba4f2b22eb7e05f976482f5a304098344e035b1cad8 in /root/buildinfo/      
# Tue, 30 Jun 2026 05:29:33 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T05:29:15Z" "org.opencontainers.image.revision"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "build-date"="2026-06-30T05:29:15Z" "architecture"="x86_64" "vcs-ref"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "vcs-type"="git" "release"="1782797275"org.opencontainers.image.created=2026-06-30T05:29:15Z,org.opencontainers.image.revision=9d52f7ccf5e43749249b95c398cdcb9020bc399d
# Wed, 01 Jul 2026 00:23:03 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 01 Jul 2026 00:23:03 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:30:55 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 01 Jul 2026 00:30:55 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 01 Jul 2026 00:30:55 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 01 Jul 2026 00:30:55 GMT
RUN fc-cache -v # buildkit
# Wed, 01 Jul 2026 00:30:55 GMT
WORKDIR /usr/share/kibana
# Wed, 01 Jul 2026 00:30:55 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 01 Jul 2026 00:30:55 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 01 Jul 2026 00:30:55 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:30:55 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 01 Jul 2026 00:30:55 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 01 Jul 2026 00:30:56 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 01 Jul 2026 00:30:57 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 01 Jul 2026 00:30:57 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 01 Jul 2026 00:30:57 GMT
LABEL org.label-schema.build-date=2026-06-25T18:50:47.749Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=36e00282a99d328a291ef2eefb94fe83b741dd19 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.3.7 org.opencontainers.image.created=2026-06-25T18:50:47.749Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=36e00282a99d328a291ef2eefb94fe83b741dd19 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.7
# Wed, 01 Jul 2026 00:30:57 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.3.7 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 01 Jul 2026 00:30:57 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 01 Jul 2026 00:30:57 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 01 Jul 2026 00:30:57 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 01 Jul 2026 00:30:57 GMT
USER 1000
```

-	Layers:
	-	`sha256:8af57f051b373375a1be8f892172089259ad624ed8452291226c539055e60228`  
		Last Modified: Tue, 30 Jun 2026 06:57:41 GMT  
		Size: 40.7 MB (40689427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f94cd4dc497ac6bab174a4f6434f8abead7d330f0db12732e19190e73a23f6a`  
		Last Modified: Wed, 01 Jul 2026 00:31:53 GMT  
		Size: 19.3 MB (19329625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdc882b69d4ccd3e8e258cf6973416233a0637187dae986b669de08cb0e3d377`  
		Last Modified: Wed, 01 Jul 2026 00:32:00 GMT  
		Size: 389.6 MB (389589695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d44cff921f120e81b1c0d7cbdf2626aa209304e576f1020c269f50e75970b513`  
		Last Modified: Wed, 01 Jul 2026 00:31:52 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c24fd71a531270c4aea66bcf5e87d946eba0ca089719c361ba4bdea88f5c7ee`  
		Last Modified: Wed, 01 Jul 2026 00:31:53 GMT  
		Size: 16.5 MB (16460492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a4f161026e99088a45012bdff0199c6b22cdf701af962a650d5fe63fa8e9d4`  
		Last Modified: Wed, 01 Jul 2026 00:31:54 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc57824d16984bab5d7043b78fb3617c918577e7a0bf343e269f905219602b8`  
		Last Modified: Wed, 01 Jul 2026 00:31:55 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437837f4aa90bfd7c6c1c861905c542386199096f744e422c65bec0f9ea88788`  
		Last Modified: Wed, 01 Jul 2026 00:31:55 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:087e01a69b309dc5a8df4cd940fcd1f46e9cbcc2d3b9c32968982221906dc979`  
		Last Modified: Wed, 01 Jul 2026 00:31:55 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7eeed6a9c398b4ddc0cc15fab433cb5e11aaf590e415bc8102f82c547ae2f5`  
		Last Modified: Wed, 01 Jul 2026 00:31:56 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a73c84b7d47e088ad7d3eab09da88dbffd9fcb0629521bc428c4386805828b4`  
		Last Modified: Wed, 01 Jul 2026 00:31:56 GMT  
		Size: 74.5 KB (74548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f65b3e02ce6af467ae02e2ede268ec736d3b24a856da36ef441dd754d8037b`  
		Last Modified: Wed, 01 Jul 2026 00:31:56 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58dd0bd441763f52f7de5bc8c87573dc8b1c0db1dcf1d1c223cb26168865ba33`  
		Last Modified: Wed, 01 Jul 2026 00:31:58 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.3.7` - unknown; unknown

```console
$ docker pull kibana@sha256:6ff78e1cc381ee84aeec4a06e5d8221e4e9fec0d5d942ba5439c7bba63ebd918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5817011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43618c9acc92cffd35e239db2b3b78208912588fe068bc84131d8b5b937758ac`

```dockerfile
```

-	Layers:
	-	`sha256:fe2a6dfdc28f934048310dc1f1060e6559a005e54fa157496b7286a9027528c3`  
		Last Modified: Wed, 01 Jul 2026 00:31:52 GMT  
		Size: 5.8 MB (5773785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6aac2407e7d3035a488757648074166408589dd1b9f2bfa76c4f02f4d432d753`  
		Last Modified: Wed, 01 Jul 2026 00:31:52 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.3.7` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:a28e77b0f914938756974ed1e66a8be279c45a01bd9d62d17ea570e7c60bc80b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **477.1 MB (477146373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e9a53984759694c8e92cf4fea5d0264da2acc6fbb287d4cc16afa8dae5cddb`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 30 Jun 2026 05:31:32 GMT
ENV container oci
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:33d9a0597e0a229533d40301027624dd670560f4cec941a76f227790e1dd51ed in /      
# Tue, 30 Jun 2026 05:31:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 05:31:33 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:a896e70442063b6b2aecdf0aac7a09d8b18a0772ea7b0aee60c2830a8ad0b28a in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:a896e70442063b6b2aecdf0aac7a09d8b18a0772ea7b0aee60c2830a8ad0b28a in /root/buildinfo/      
# Tue, 30 Jun 2026 05:31:34 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T05:31:10Z" "org.opencontainers.image.revision"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "build-date"="2026-06-30T05:31:10Z" "architecture"="aarch64" "vcs-ref"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "vcs-type"="git" "release"="1782797275"org.opencontainers.image.created=2026-06-30T05:31:10Z,org.opencontainers.image.revision=9d52f7ccf5e43749249b95c398cdcb9020bc399d
# Wed, 01 Jul 2026 00:14:20 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 01 Jul 2026 00:14:20 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:20:47 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 01 Jul 2026 00:20:48 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 01 Jul 2026 00:20:48 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 01 Jul 2026 00:20:48 GMT
RUN fc-cache -v # buildkit
# Wed, 01 Jul 2026 00:20:48 GMT
WORKDIR /usr/share/kibana
# Wed, 01 Jul 2026 00:20:48 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 01 Jul 2026 00:20:48 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 01 Jul 2026 00:20:48 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:20:48 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 01 Jul 2026 00:20:48 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 01 Jul 2026 00:20:49 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 01 Jul 2026 00:20:50 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 01 Jul 2026 00:20:50 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 01 Jul 2026 00:20:50 GMT
LABEL org.label-schema.build-date=2026-06-25T18:50:47.749Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=36e00282a99d328a291ef2eefb94fe83b741dd19 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.3.7 org.opencontainers.image.created=2026-06-25T18:50:47.749Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=36e00282a99d328a291ef2eefb94fe83b741dd19 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.7
# Wed, 01 Jul 2026 00:20:50 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.3.7 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 01 Jul 2026 00:20:50 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 01 Jul 2026 00:20:50 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 01 Jul 2026 00:20:50 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 01 Jul 2026 00:20:50 GMT
USER 1000
```

-	Layers:
	-	`sha256:96c16ad0505847764761c5c4d0a82cd8a619f3e93c57f6a4b081cb9d4d0dd3e7`  
		Last Modified: Tue, 30 Jun 2026 06:59:10 GMT  
		Size: 38.8 MB (38848656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7a07522b1697635bec0126c86b5f130ae3b276b7ee5da299565761f725d1fb`  
		Last Modified: Wed, 01 Jul 2026 00:21:56 GMT  
		Size: 19.3 MB (19283951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b8cfa9a779209878c24ac3d5d746028d7250d49204d08f7d8f52d4b136c4d0`  
		Last Modified: Wed, 01 Jul 2026 00:22:04 GMT  
		Size: 402.5 MB (402456855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc5464bccc3970d43b82df7f999d8db45b2d573e5d75c9189ed4a2861cbfac3`  
		Last Modified: Wed, 01 Jul 2026 00:21:55 GMT  
		Size: 9.1 KB (9098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b2a984703cf4d3e691ad6b2d1be38b4ecb77692b5bfe32de4f84e23ed74592`  
		Last Modified: Wed, 01 Jul 2026 00:21:56 GMT  
		Size: 16.5 MB (16460499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23f3d4990c20fa8901b831462f0421152ddbf2b7e3e846f2f0c240adc9e6e770`  
		Last Modified: Wed, 01 Jul 2026 00:21:57 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea257b2c595e5fbbb10e166a7303f9aa1366af432798ce9d9b976144e224c504`  
		Last Modified: Wed, 01 Jul 2026 00:21:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26562f7136cf9003f46bb50154c5b21c2e66f90e2fa4e7fadd946d7eeddce6cb`  
		Last Modified: Wed, 01 Jul 2026 00:21:58 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384e5757abdbbaccf11ec899cd6240ae042cb8e7c5586e1c88d26840fc337f94`  
		Last Modified: Wed, 01 Jul 2026 00:21:58 GMT  
		Size: 4.9 KB (4927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4d28c225b2359be2819750aca8e20ddf68fdf586e5f1d5aa40398ad0cfb65bc`  
		Last Modified: Wed, 01 Jul 2026 00:21:59 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566ffb8ccf844b64a2aa3970053231eb5006652a884049e5e52fa5d0af74e019`  
		Last Modified: Wed, 01 Jul 2026 00:21:59 GMT  
		Size: 73.5 KB (73452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd3f1c71a2800fccaabb47be82c3f54579ca8fc884d57f79a752cc2d312231c1`  
		Last Modified: Wed, 01 Jul 2026 00:22:00 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5739c8a8298a82f4c01f418b829cae35a30c76ab0529d4795f7fe5369dc9df83`  
		Last Modified: Wed, 01 Jul 2026 00:22:01 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.3.7` - unknown; unknown

```console
$ docker pull kibana@sha256:063878f68869e819a87fd64a6aeddb76e5e6555c56d3a009bdba4aad4782766a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5814158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45c3e024b36aeb72729c8e7fcf5c4d3e8e8c3c15b598672ca4591cbfc36f3ca7`

```dockerfile
```

-	Layers:
	-	`sha256:1002acc79665a083cd445ac8330c0ea34e344233ea6723b2310c4389c20612bc`  
		Last Modified: Wed, 01 Jul 2026 00:21:55 GMT  
		Size: 5.8 MB (5770675 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7ff4fd246eef78eaf149fa7d1d0851c4c8ebfc4c284532aeffaea8eba2a66d9`  
		Last Modified: Wed, 01 Jul 2026 00:21:55 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.3`

```console
$ docker pull kibana@sha256:5625bdfdf50ca0809c22738f84230ecf80a3e17eb60c0d16dd0eae54b9940104
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.3` - linux; amd64

```console
$ docker pull kibana@sha256:8029bf752a2a721f0da088a3ef50c53ddf70dd56498dcbe5711a294b2e6f29e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.5 MB (531518388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfc5e860b5252243254165113438f9ff223141a1aa07d81d86bb90a207e2cab3`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 30 Jun 2026 05:29:32 GMT
ENV container oci
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:efac128f83583a6247aea2e1de3f354267a91fa9afbb47889a2bebf40b22f4af in /      
# Tue, 30 Jun 2026 05:29:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 05:29:33 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:041b210b17febe96db30cba4f2b22eb7e05f976482f5a304098344e035b1cad8 in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:041b210b17febe96db30cba4f2b22eb7e05f976482f5a304098344e035b1cad8 in /root/buildinfo/      
# Tue, 30 Jun 2026 05:29:33 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T05:29:15Z" "org.opencontainers.image.revision"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "build-date"="2026-06-30T05:29:15Z" "architecture"="x86_64" "vcs-ref"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "vcs-type"="git" "release"="1782797275"org.opencontainers.image.created=2026-06-30T05:29:15Z,org.opencontainers.image.revision=9d52f7ccf5e43749249b95c398cdcb9020bc399d
# Wed, 01 Jul 2026 00:23:06 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 01 Jul 2026 00:23:06 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:32:52 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 01 Jul 2026 00:32:53 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 01 Jul 2026 00:32:53 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 01 Jul 2026 00:32:53 GMT
RUN fc-cache -v # buildkit
# Wed, 01 Jul 2026 00:32:53 GMT
WORKDIR /usr/share/kibana
# Wed, 01 Jul 2026 00:32:53 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 01 Jul 2026 00:32:53 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 01 Jul 2026 00:32:53 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:32:53 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 01 Jul 2026 00:32:53 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 01 Jul 2026 00:32:54 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 01 Jul 2026 00:32:55 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 01 Jul 2026 00:32:55 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 01 Jul 2026 00:32:55 GMT
LABEL org.label-schema.build-date=2026-06-25T16:11:43.052Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=9e9848d35f973e1f40f65d79760037228c54b7ab org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.3 org.opencontainers.image.created=2026-06-25T16:11:43.052Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=9e9848d35f973e1f40f65d79760037228c54b7ab org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.3
# Wed, 01 Jul 2026 00:32:55 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.3 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 01 Jul 2026 00:32:55 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 01 Jul 2026 00:32:55 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 01 Jul 2026 00:32:55 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 01 Jul 2026 00:32:55 GMT
USER 1000
```

-	Layers:
	-	`sha256:8af57f051b373375a1be8f892172089259ad624ed8452291226c539055e60228`  
		Last Modified: Tue, 30 Jun 2026 06:57:41 GMT  
		Size: 40.7 MB (40689427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf428880d16a9bfc352adb32defd79d09d46e43c06233a213a464388d50b671e`  
		Last Modified: Wed, 01 Jul 2026 00:34:08 GMT  
		Size: 19.3 MB (19329619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a64715e0fa3b0d05692ed2fd861115f8be589fdcd7951f2a133b98ffcf334e8`  
		Last Modified: Wed, 01 Jul 2026 00:34:16 GMT  
		Size: 454.9 MB (454940910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32350e326b9f64c7c46b507eb668e581915aee0e77e4147abe3ceebdc2c9ab61`  
		Last Modified: Wed, 01 Jul 2026 00:34:06 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bb0e925945bffedf016caebc7c0e3ff9ab5984852cc77a859a0813cf02b3346`  
		Last Modified: Wed, 01 Jul 2026 00:34:08 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661aeb6fb2d4dcf669856c92f990b3e006ec265c1d1eedb9a9e9e22a470f5c52`  
		Last Modified: Wed, 01 Jul 2026 00:34:08 GMT  
		Size: 5.2 KB (5228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a75b211b650e81d3faa2ed4837b3f3271e1ecaed5c61be25d4a1373218ed71b`  
		Last Modified: Wed, 01 Jul 2026 00:34:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f185c2e39d9259c22494c4447b2615c59afc93df6975f146d842c659773a768c`  
		Last Modified: Wed, 01 Jul 2026 00:34:09 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efaf0fe623a8b234c7ad2dda8626d06fc013454f06b518ae43a1ce9fcf67a98f`  
		Last Modified: Wed, 01 Jul 2026 00:34:10 GMT  
		Size: 4.9 KB (4931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8afef4cacea4295f2347a1d57106e36313288ab2587106447630147e6efd61a`  
		Last Modified: Wed, 01 Jul 2026 00:34:11 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ddf700a75c60795c8c8581ed03544eb9eee71ec2bd2a8428fecd2ded1869e98`  
		Last Modified: Wed, 01 Jul 2026 00:34:11 GMT  
		Size: 74.5 KB (74548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c80b53b99124f5e460624c5b1eeddfc4a533add2ea211135ba83306b77c46a0`  
		Last Modified: Wed, 01 Jul 2026 00:34:11 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43a1f860ba830f6be02e20e47b39dcef77f7645f5cfd4958e77c3caaab1bfd23`  
		Last Modified: Wed, 01 Jul 2026 00:34:12 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.3` - unknown; unknown

```console
$ docker pull kibana@sha256:830c192436e03e0255d01c693ed5c73825fec5b360043d3b650ef57ddeea2f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5885649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b553013055de8adcb5b1df2cfbfa90793ba165ed1548dd39eafafc79c8c8f557`

```dockerfile
```

-	Layers:
	-	`sha256:f66c6aa6c5bf6d91975d81a07efa78da7ee12ac6dfbf0f7c4e96e50d12529bd2`  
		Last Modified: Wed, 01 Jul 2026 00:34:07 GMT  
		Size: 5.8 MB (5842423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a853049f2c874767e1d10e4c51c59e070d9b693022c6db5edfbe9200281a260`  
		Last Modified: Wed, 01 Jul 2026 00:34:06 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.3` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:f8530d9eb8ff8f93b4f4888c5cf247cce6dd48e2c2cc271d7f9ea9074e7a1718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **542.6 MB (542593802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76e283f36a1f9f7ee6cbb31f4c8b4898d07043797db876a242d74c645ac6e715`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 30 Jun 2026 05:31:32 GMT
ENV container oci
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:33d9a0597e0a229533d40301027624dd670560f4cec941a76f227790e1dd51ed in /      
# Tue, 30 Jun 2026 05:31:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 05:31:33 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:a896e70442063b6b2aecdf0aac7a09d8b18a0772ea7b0aee60c2830a8ad0b28a in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:a896e70442063b6b2aecdf0aac7a09d8b18a0772ea7b0aee60c2830a8ad0b28a in /root/buildinfo/      
# Tue, 30 Jun 2026 05:31:34 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T05:31:10Z" "org.opencontainers.image.revision"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "build-date"="2026-06-30T05:31:10Z" "architecture"="aarch64" "vcs-ref"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "vcs-type"="git" "release"="1782797275"org.opencontainers.image.created=2026-06-30T05:31:10Z,org.opencontainers.image.revision=9d52f7ccf5e43749249b95c398cdcb9020bc399d
# Wed, 01 Jul 2026 00:14:26 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 01 Jul 2026 00:14:26 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:24:40 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 01 Jul 2026 00:24:40 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 01 Jul 2026 00:24:41 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 01 Jul 2026 00:24:41 GMT
RUN fc-cache -v # buildkit
# Wed, 01 Jul 2026 00:24:41 GMT
WORKDIR /usr/share/kibana
# Wed, 01 Jul 2026 00:24:41 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 01 Jul 2026 00:24:41 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 01 Jul 2026 00:24:41 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:24:41 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 01 Jul 2026 00:24:41 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 01 Jul 2026 00:24:42 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 01 Jul 2026 00:24:43 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 01 Jul 2026 00:24:43 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 01 Jul 2026 00:24:43 GMT
LABEL org.label-schema.build-date=2026-06-25T16:11:43.052Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=9e9848d35f973e1f40f65d79760037228c54b7ab org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.3 org.opencontainers.image.created=2026-06-25T16:11:43.052Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=9e9848d35f973e1f40f65d79760037228c54b7ab org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.3
# Wed, 01 Jul 2026 00:24:43 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.3 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 01 Jul 2026 00:24:43 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 01 Jul 2026 00:24:43 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 01 Jul 2026 00:24:43 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 01 Jul 2026 00:24:43 GMT
USER 1000
```

-	Layers:
	-	`sha256:96c16ad0505847764761c5c4d0a82cd8a619f3e93c57f6a4b081cb9d4d0dd3e7`  
		Last Modified: Tue, 30 Jun 2026 06:59:10 GMT  
		Size: 38.8 MB (38848656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbdf1befa2b84004e7595f4c9e42c8504ba09ce3bd0dad92da484681fcbdb3a3`  
		Last Modified: Wed, 01 Jul 2026 00:26:02 GMT  
		Size: 19.3 MB (19283997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310897dea198e56bbf278f627cf6674c1a42a0238ac6561ed7709bfed14e86dd`  
		Last Modified: Wed, 01 Jul 2026 00:26:10 GMT  
		Size: 467.9 MB (467904253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63fcee7ba47b3ba427f556e31ea0c3e5f961a75c0fd1bef200180d1a84fc741d`  
		Last Modified: Wed, 01 Jul 2026 00:26:00 GMT  
		Size: 9.1 KB (9098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84ce606abc2523a23b8079aafca54c81033279ec640df9d2c17591940eb23842`  
		Last Modified: Wed, 01 Jul 2026 00:26:02 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd6f2fc24e28c9d1584f8ef2af22e63bad6c856b41731837ed1880925352f712`  
		Last Modified: Wed, 01 Jul 2026 00:26:02 GMT  
		Size: 5.2 KB (5220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ed8b60e3319c9074cd96b3fdfe51c8aa62968938b33d74a8380da46b1736e33`  
		Last Modified: Wed, 01 Jul 2026 00:26:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4019eea4e1b54f27f39fe0c7036f93abf928f40858d53187aa5456765c051b8c`  
		Last Modified: Wed, 01 Jul 2026 00:26:03 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd3f8363afc75724f69bf503162316605a80070ef1d6f0cf62a5dbc0298f7a44`  
		Last Modified: Wed, 01 Jul 2026 00:26:03 GMT  
		Size: 4.9 KB (4926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:393f4b4b62b655c4af5be93a5b1906cd2b081df25be8e284255487f05660b59d`  
		Last Modified: Wed, 01 Jul 2026 00:26:05 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ad28e010cef97530e5e663ae1639a3d84eb993d083c1872fdef0825f28f3385`  
		Last Modified: Wed, 01 Jul 2026 00:26:05 GMT  
		Size: 73.5 KB (73452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a46095f7bade96c2a1118c58aed9104ca51997a520f2d0936bd0be03bb74bcab`  
		Last Modified: Wed, 01 Jul 2026 00:26:05 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aef55abe3c53260edd816fba40dd019558f753d6edb33e4c5932a1b735daa42`  
		Last Modified: Wed, 01 Jul 2026 00:26:06 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.3` - unknown; unknown

```console
$ docker pull kibana@sha256:7fca48dd3665b527f66a06e223ee771b6572d94879a8c991eb1d37d644d369bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5882795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ac98a32fc2906a290317172319c2a4c7079982d69d64efab141a36cb35fe72a`

```dockerfile
```

-	Layers:
	-	`sha256:b9e6fc7d0570b06121074eec4b3fb952e6bd59545d481552774816c46927be3c`  
		Last Modified: Wed, 01 Jul 2026 00:26:01 GMT  
		Size: 5.8 MB (5839313 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff2a9a1de207131fab6996d6961b740085053aa35957c5888ca25aeea2c2b80c`  
		Last Modified: Wed, 01 Jul 2026 00:26:01 GMT  
		Size: 43.5 KB (43482 bytes)  
		MIME: application/vnd.in-toto+json
