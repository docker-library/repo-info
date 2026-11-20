<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.25`](#kibana81925)
-	[`kibana:9.4.8`](#kibana948)
-	[`kibana:9.5.5`](#kibana955)

## `kibana:8.19.25`

```console
$ docker pull kibana@sha256:f0a187a94c3e8bfad1d08c2df95107f5ba5cc87059990f67f7e2693cc652cee6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:8.19.25` - linux; amd64

```console
$ docker pull kibana@sha256:f64a7342b17628ef2d0fefcaf98be0257ee01702445c0203bdda7534b8e531a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.8 MB (454767362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:783ed3e7d3f050882a355659d494f910d51ad81c1b8586c02c5b40e4000581fe`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:39 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 20 Nov 2026 03:23:39 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:38 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 20 Nov 2026 03:31:38 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 20 Nov 2026 03:31:38 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Fri, 20 Nov 2026 03:31:39 GMT
RUN fc-cache -v # buildkit
# Fri, 20 Nov 2026 03:31:39 GMT
WORKDIR /usr/share/kibana
# Fri, 20 Nov 2026 03:31:39 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 20 Nov 2026 03:31:39 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 20 Nov 2026 03:31:39 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:31:39 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 20 Nov 2026 03:31:39 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 03:31:39 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 20 Nov 2026 03:31:40 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 20 Nov 2026 03:31:41 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 20 Nov 2026 03:31:41 GMT
LABEL org.label-schema.build-date=2026-11-05T11:06:44.382Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=3544eac4694b201b2dfb2ece54b8d28c08389679 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.25 org.opencontainers.image.created=2026-11-05T11:06:44.382Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=3544eac4694b201b2dfb2ece54b8d28c08389679 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.25
# Fri, 20 Nov 2026 03:31:41 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 20 Nov 2026 03:31:41 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 20 Nov 2026 03:31:41 GMT
USER 1000
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6686fdcbd59d042187118dabb08760a86267634810f2545cc387582b4100254`  
		Last Modified: Fri, 20 Nov 2026 03:32:38 GMT  
		Size: 9.4 MB (9412085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06f97b5deff19224f77ab84e9ddc93c883743d13ca4fcb6bc5e5a0c4c4e4426`  
		Last Modified: Fri, 20 Nov 2026 03:32:46 GMT  
		Size: 398.9 MB (398917973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:602fb6d2eaaca4bffb75a9ec2337c0f838fc9ebd177bddbdd5cfc2abfe476dd2`  
		Last Modified: Fri, 20 Nov 2026 03:32:37 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd904be73ea9d9748b60a8804bfefcc455f86c6107adb3dd6fbc7485d76e711`  
		Last Modified: Fri, 20 Nov 2026 03:32:38 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4135aabc8c6570e3a7702315fff88a1ada416425b85d8031958333d399a24e03`  
		Last Modified: Fri, 20 Nov 2026 03:32:39 GMT  
		Size: 5.2 KB (5240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42bfc8f54a2fee3a68144a049519e3de605a0b82f8f9404c6e6e64a613a82093`  
		Last Modified: Fri, 20 Nov 2026 03:32:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac631b05cd8a65ea27ba231a4c5de4b7b0d5c4543f7b8000c09472311aa65c77`  
		Last Modified: Fri, 20 Nov 2026 03:32:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6e7019ebab24295cdd24082e943d95749344e39e394f777ce6220fe94c3e9d2`  
		Last Modified: Fri, 20 Nov 2026 03:32:40 GMT  
		Size: 4.8 KB (4821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81bdb2db9aa80bf9ef2b7acd7c6836df39fa802d51bbde9d5c835932690d3ed`  
		Last Modified: Fri, 20 Nov 2026 03:32:41 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7352358155d8b371a5bffc6b475dbfb9d56fbef67569287190bbe92abe5c97e3`  
		Last Modified: Fri, 20 Nov 2026 03:32:41 GMT  
		Size: 161.7 KB (161739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba61dbcd3bb3da64b18927c6b98a25653b906fe44c2585b0796034224db0a95`  
		Last Modified: Fri, 20 Nov 2026 03:32:41 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.25` - unknown; unknown

```console
$ docker pull kibana@sha256:0f48b9e00dc8f71dd397b1073e9df4f5d823115a5cc8a14dbfee917768dde34e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4760844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b9504478a77c9b61a96aa74bd7120f57cc1fca3a1297f32c6df3d3cd4e2d2f`

```dockerfile
```

-	Layers:
	-	`sha256:f9bb866795cda3db3e5819d8410d530a80afc110f71d65e1e630e134febe8ea9`  
		Last Modified: Fri, 20 Nov 2026 03:32:38 GMT  
		Size: 4.7 MB (4719930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b44a737e8614d2971ab94700cf9afb73d3f2a7855f6d923d943bd56f8de7b85c`  
		Last Modified: Fri, 20 Nov 2026 03:32:37 GMT  
		Size: 40.9 KB (40914 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:8.19.25` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:b692a1234acb6f3289cd9da0fef642409720178c398cdedcffab9458f813722f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.9 MB (466897245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19fb1ce99df05ba8b93ee5f40a8d9b483594d4ea2f36a06842f5f2d273b838c7`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:24:07 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 20 Nov 2026 03:24:07 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:25 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 20 Nov 2026 03:30:26 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 20 Nov 2026 03:30:26 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Fri, 20 Nov 2026 03:30:26 GMT
RUN fc-cache -v # buildkit
# Fri, 20 Nov 2026 03:30:26 GMT
WORKDIR /usr/share/kibana
# Fri, 20 Nov 2026 03:30:26 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 20 Nov 2026 03:30:26 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 20 Nov 2026 03:30:26 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:30:26 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 20 Nov 2026 03:30:26 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 03:30:27 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 20 Nov 2026 03:30:28 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 20 Nov 2026 03:30:28 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 20 Nov 2026 03:30:28 GMT
LABEL org.label-schema.build-date=2026-11-05T11:06:44.382Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=3544eac4694b201b2dfb2ece54b8d28c08389679 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.25 org.opencontainers.image.created=2026-11-05T11:06:44.382Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=3544eac4694b201b2dfb2ece54b8d28c08389679 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.25
# Fri, 20 Nov 2026 03:30:28 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 20 Nov 2026 03:30:28 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 20 Nov 2026 03:30:28 GMT
USER 1000
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ea22eeb8bcd9b7eccf4286fd00aa566dbbe9f65dc14cfe72b75b4bbcc4a6175`  
		Last Modified: Fri, 20 Nov 2026 03:31:36 GMT  
		Size: 9.4 MB (9438313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0140a874540639b5f9895dde5058c04b8501dff3eb741296c7f5cc6559826bb8`  
		Last Modified: Fri, 20 Nov 2026 03:31:43 GMT  
		Size: 411.9 MB (411853531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b99047b3933eb1c39ed558e042570a3243ca7392d0577f73ee4ae75cbf95a59`  
		Last Modified: Fri, 20 Nov 2026 03:31:35 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94522d67552186ff0d310e6518d05f197e80da7fb06d2e2f5af7791466a12500`  
		Last Modified: Fri, 20 Nov 2026 03:31:37 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fcb65a814226f766b05faf9fdfaf48451fbaab19474f6e117d001b5892ceea2`  
		Last Modified: Fri, 20 Nov 2026 03:31:37 GMT  
		Size: 5.2 KB (5241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1edb264c199eddb30ffd98dbf36309e6f462407c61e95f2eb4b6ab8f4376bf12`  
		Last Modified: Fri, 20 Nov 2026 03:31:37 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb173630739f8baa7a7a841201a349a79643fef6f7df4f1cfcd7b4f9587e422`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:383801da4225d89e54ff3c185d4ac1176783379307061641b2c62b169e654af8`  
		Last Modified: Fri, 20 Nov 2026 03:31:38 GMT  
		Size: 4.8 KB (4820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a882c935b5aa36b1f78e81442ebff2697646ca012b6050d67051c857bbe760ca`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfff3b3eee3939e92bd3148548b538f0ffd9566a89d635ffdc670814e4be5fb2`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 158.3 KB (158253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4441f85a0afd2a40d52e593c4848b99c87c7781f632a51ddb10f61d0e545d8f`  
		Last Modified: Fri, 20 Nov 2026 03:31:39 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.25` - unknown; unknown

```console
$ docker pull kibana@sha256:28e05d425fa9577d6c4ae7face13a684be2d9384ae626a507f0baed10bf3d3e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4762157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee07024bdf31e3d9d82b6efa522753b9a1647fffe16d66b5ebd3148aa52501a`

```dockerfile
```

-	Layers:
	-	`sha256:76cbad9bcf74d8729b9f44665e2f5dca8379979880e457eda0da67b392002254`  
		Last Modified: Fri, 20 Nov 2026 03:31:36 GMT  
		Size: 4.7 MB (4720994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43dc4b83d384a6b40f6dd2f0fe417081d33119913fcc4575a7e4391a3715bff8`  
		Last Modified: Fri, 20 Nov 2026 03:31:35 GMT  
		Size: 41.2 KB (41163 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.8`

```console
$ docker pull kibana@sha256:e345598b43c4f0ba18f4896b2335312c8d233683b6caf230f4f2a493a005987b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.8` - linux; amd64

```console
$ docker pull kibana@sha256:28545d4449db22d8e0d10023e08ad20d52f538432290fea70de1d1769493f1ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.6 MB (545619235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:668ad302fca86411ed37f031283adeeb2ed38d7a13403c6fb1d39b35a9114c41`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:34:58 GMT
ENV container oci
# Wed, 18 Nov 2026 11:34:59 GMT
COPY dir:6fb577b33d6b897109754e222f04b40d28eca71e767c06a8f97e8ed992af3521 in /      
# Wed, 18 Nov 2026 11:34:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:34:59 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:34:59 GMT
COPY dir:f2e48d20366904f6b13a4d8ede95af5672f192970fe36c37d676c06b33c4fdd7 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:35:00 GMT
COPY dir:f2e48d20366904f6b13a4d8ede95af5672f192970fe36c37d676c06b33c4fdd7 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:35:00 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:34:36Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:34:36Z" "architecture"="x86_64" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:34:36Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 21:42:12 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 18 Nov 2026 21:42:12 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:51:32 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 18 Nov 2026 21:51:33 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 18 Nov 2026 21:51:33 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 18 Nov 2026 21:51:33 GMT
RUN fc-cache -v # buildkit
# Wed, 18 Nov 2026 21:51:33 GMT
WORKDIR /usr/share/kibana
# Wed, 18 Nov 2026 21:51:33 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 18 Nov 2026 21:51:33 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 18 Nov 2026 21:51:33 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:51:33 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 18 Nov 2026 21:51:33 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:51:34 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 18 Nov 2026 21:51:35 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 18 Nov 2026 21:51:35 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 18 Nov 2026 21:51:35 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Wed, 18 Nov 2026 21:51:35 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 18 Nov 2026 21:51:35 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 18 Nov 2026 21:51:35 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 18 Nov 2026 21:51:35 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 18 Nov 2026 21:51:35 GMT
USER 1000
```

-	Layers:
	-	`sha256:c23374398181a4f60ce7fe1e5ee30bab79eff22d5d3aa94ed598ddee47dc229f`  
		Last Modified: Wed, 18 Nov 2026 16:30:18 GMT  
		Size: 40.7 MB (40676085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4c6bb2c11543b43167cc162593f7a7f54cf67ca756b7aaf07ddbcadbc3538c`  
		Last Modified: Wed, 18 Nov 2026 21:52:44 GMT  
		Size: 19.3 MB (19307364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76470d68eb99e0502f06b4a92421a4c908446b9f2b0d850222f8d8d29b695e63`  
		Last Modified: Wed, 18 Nov 2026 21:52:55 GMT  
		Size: 469.1 MB (469077384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3535babb6239fd6a625dc6719bdb3a06f60ec6dabdbe2aaa7b418c97719d74ec`  
		Last Modified: Wed, 18 Nov 2026 21:52:43 GMT  
		Size: 9.5 KB (9529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a8cc6173114ccb3f842b54546d24c45795a910633469383650842a854d974b2`  
		Last Modified: Wed, 18 Nov 2026 21:52:44 GMT  
		Size: 16.5 MB (16460484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:705a709497e2950ac2553792f6f66ff9a059b909d62b8a11e451fbca3b6b7a2d`  
		Last Modified: Wed, 18 Nov 2026 21:52:44 GMT  
		Size: 5.2 KB (5230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e737b93713a8e5990bf5aed9f74939b2e7814a0834fc66ba5eb0bc6be921cf07`  
		Last Modified: Wed, 18 Nov 2026 21:52:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef385521351321beb2b702b2745a2d157444bca14b995df34e53fa547e7ccb5`  
		Last Modified: Wed, 18 Nov 2026 21:52:46 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f28ccf8c82a331933ba05e8920917c7b0fe28534db6e987de2326fd2dc59171`  
		Last Modified: Wed, 18 Nov 2026 21:52:46 GMT  
		Size: 4.9 KB (4926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f69f911060c62bf3a5380b8352adde67da203e446e7b6e8c030898320fea1dd8`  
		Last Modified: Wed, 18 Nov 2026 21:52:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d856115dca441b3c987e76e0d91ea6bbc890c93cfac3e12c6763607ebe563e`  
		Last Modified: Wed, 18 Nov 2026 21:52:47 GMT  
		Size: 74.5 KB (74523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f124e105eb158892bb0e54ece26414ca312888c9dd39d7742428666d5a6215a8`  
		Last Modified: Wed, 18 Nov 2026 21:52:47 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b71ec9c89973383ee6a26d1e5c4919cc729d017680aeff7b04caa35c25bdc8`  
		Last Modified: Wed, 18 Nov 2026 21:52:48 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:c5b98c88a1597951c3324591a8558d69585a40bcea4802e77760c0dcec0e9eec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5901699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:146db65bb522e88c25ee199f0a4947d56157d23fea014ef11d000b8199204937`

```dockerfile
```

-	Layers:
	-	`sha256:05f06ab0cc520b15f56b0f177d538c96cb084cbc727228f972b2b7f824cddecb`  
		Last Modified: Wed, 18 Nov 2026 21:52:43 GMT  
		Size: 5.9 MB (5858473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d48503be0e097743b70f5e0650ab996e07dce59518fce379a53df1b1fa731e2`  
		Last Modified: Wed, 18 Nov 2026 21:52:43 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:01b753e4aa4744f82258fb7f61bab22f942b4e3e1c1f15fe3b4e2c726c499f9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **557.1 MB (557073649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdfed9ced888a35589aa1e1232ee1d969ae87084239a29061c8fe0327f0a2de1`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 18 Nov 2026 11:36:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:36:57 GMT
ENV container oci
# Wed, 18 Nov 2026 11:36:58 GMT
COPY dir:eee7fabfac1d2f3fb8ad9983912ceacfb7a2d25b2212bd95c123c4d0d51b81b6 in /      
# Wed, 18 Nov 2026 11:36:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:36:59 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:36:59 GMT
COPY dir:7cfd200b3d4ce0bf8a330208f8ea235e169c726ae2f96fcd7ec87ed6561a62d5 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:36:59 GMT
COPY dir:7cfd200b3d4ce0bf8a330208f8ea235e169c726ae2f96fcd7ec87ed6561a62d5 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:37:00 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:36:26Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:36:26Z" "architecture"="aarch64" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:36:26Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 21:42:19 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 18 Nov 2026 21:42:19 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:50:23 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 18 Nov 2026 21:50:24 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 18 Nov 2026 21:50:24 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 18 Nov 2026 21:50:24 GMT
RUN fc-cache -v # buildkit
# Wed, 18 Nov 2026 21:50:24 GMT
WORKDIR /usr/share/kibana
# Wed, 18 Nov 2026 21:50:25 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 18 Nov 2026 21:50:25 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 18 Nov 2026 21:50:25 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:50:25 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 18 Nov 2026 21:50:25 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:50:26 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 18 Nov 2026 21:50:27 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 18 Nov 2026 21:50:27 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 18 Nov 2026 21:50:27 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Wed, 18 Nov 2026 21:50:27 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 18 Nov 2026 21:50:27 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 18 Nov 2026 21:50:27 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 18 Nov 2026 21:50:27 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 18 Nov 2026 21:50:27 GMT
USER 1000
```

-	Layers:
	-	`sha256:43a13a3b1a9d32ca4e00b11b77daa68db7900831eb27e2a0bfa523b9764e2ff5`  
		Last Modified: Wed, 18 Nov 2026 17:00:22 GMT  
		Size: 38.7 MB (38744735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c099b1e6b99d5e6c78e73544b9c4fb73a775c4dd9997dc71e16b0e0cd10999`  
		Last Modified: Wed, 18 Nov 2026 21:51:51 GMT  
		Size: 19.3 MB (19254228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f647a2c39037480c062d617cb3e2ee995920f90e2b58361567dcc580970bce2a`  
		Last Modified: Wed, 18 Nov 2026 21:51:59 GMT  
		Size: 482.5 MB (482517792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:501a82065a5e3c75b81dd91e6055aeaf11fb0e7a3a0f71c8c7c969d742a7e22a`  
		Last Modified: Wed, 18 Nov 2026 21:51:50 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9b90cbb2651e7a7423ffcd1b77287a9e1cfa8f6bf00e58d7a759e7a52000b76`  
		Last Modified: Wed, 18 Nov 2026 21:51:51 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e80b563950d960530a6c01ccbc973a816dcee071c77353b3e4fc24fa046f701f`  
		Last Modified: Wed, 18 Nov 2026 21:51:51 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ebb88a843cc1dcf4da7d694375bab2ac639657dc6083a4aa98d08f061afa69`  
		Last Modified: Wed, 18 Nov 2026 21:51:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8dc9ebf421174869c16e3f38f9996cb24862040cdb06ecf45328f4524376891`  
		Last Modified: Wed, 18 Nov 2026 21:51:52 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ec04e37e69226ada117dc8c9a1709e7925ec52f5853af1d151a485d8c8a7c5`  
		Last Modified: Wed, 18 Nov 2026 21:51:53 GMT  
		Size: 4.9 KB (4927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dcfe3d88659384ee63388df623fad006303956daeaac896b9eadb2de5d38195`  
		Last Modified: Wed, 18 Nov 2026 21:51:53 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be0f3d484982f740f2197dfc653d9500d1b7a37fb785fbfa85f7e58b1898c22`  
		Last Modified: Wed, 18 Nov 2026 21:51:53 GMT  
		Size: 73.4 KB (73446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efbf262b82b8584a5a527c85e81619b0ac0039a6f3fe621a7498efc2cfe1f5f`  
		Last Modified: Wed, 18 Nov 2026 21:51:54 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d4be467e162ec48a170ba6fc458dd289b7e4d9eb08d7593813fd4a318ee4d9`  
		Last Modified: Wed, 18 Nov 2026 21:51:55 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:287d21e027c9e20b88e1e3ff959ed95dee432c262efb7f838f72312223aed3c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5898845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac3da8f05c23a0cb9b847cde192c23f9802019050110711f6f8721fa38e50678`

```dockerfile
```

-	Layers:
	-	`sha256:cb82d76d9a9c0e11d2519a05c7a8d051ba359acc5c06750e9e586d270c24ad50`  
		Last Modified: Wed, 18 Nov 2026 21:51:50 GMT  
		Size: 5.9 MB (5855363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6bc4170c2d4dc4c6a8fc30ebc4029bf24fed984c04e7d490312c619a7759aa6`  
		Last Modified: Wed, 18 Nov 2026 21:51:50 GMT  
		Size: 43.5 KB (43482 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.5`

```console
$ docker pull kibana@sha256:f67c3e6ceba314e149e5eeb9b700eb076e27084d11671454858e3c0019af486b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.5` - linux; amd64

```console
$ docker pull kibana@sha256:70d03d79d2e20c05ccf49ef29e60832384ba4fa9f5bdc52e8f80cc59eb5f4119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.2 MB (537242992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8c3ff5413298adbfc842127eb79312173257de6ebc25864860b69eaa96d0c89`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:34:58 GMT
ENV container oci
# Wed, 18 Nov 2026 11:34:59 GMT
COPY dir:6fb577b33d6b897109754e222f04b40d28eca71e767c06a8f97e8ed992af3521 in /      
# Wed, 18 Nov 2026 11:34:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:34:59 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:34:59 GMT
COPY dir:f2e48d20366904f6b13a4d8ede95af5672f192970fe36c37d676c06b33c4fdd7 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:35:00 GMT
COPY dir:f2e48d20366904f6b13a4d8ede95af5672f192970fe36c37d676c06b33c4fdd7 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:35:00 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:34:36Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:34:36Z" "architecture"="x86_64" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:34:36Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 21:42:16 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 18 Nov 2026 21:42:16 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:50:36 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 18 Nov 2026 21:50:36 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 18 Nov 2026 21:50:36 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 18 Nov 2026 21:50:37 GMT
RUN fc-cache -v # buildkit
# Wed, 18 Nov 2026 21:50:37 GMT
WORKDIR /usr/share/kibana
# Wed, 18 Nov 2026 21:50:37 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 18 Nov 2026 21:50:37 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 18 Nov 2026 21:50:37 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:50:37 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 18 Nov 2026 21:50:37 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:50:38 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 18 Nov 2026 21:50:38 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 18 Nov 2026 21:50:39 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 18 Nov 2026 21:50:39 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Wed, 18 Nov 2026 21:50:39 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 18 Nov 2026 21:50:39 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 18 Nov 2026 21:50:39 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 18 Nov 2026 21:50:39 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 18 Nov 2026 21:50:39 GMT
USER 1000
```

-	Layers:
	-	`sha256:c23374398181a4f60ce7fe1e5ee30bab79eff22d5d3aa94ed598ddee47dc229f`  
		Last Modified: Wed, 18 Nov 2026 16:30:18 GMT  
		Size: 40.7 MB (40676085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:590bcd1ca709c418f1cbcb0c1db5461b851b115e4ba6ae17f3fecb2700290c81`  
		Last Modified: Wed, 18 Nov 2026 21:51:49 GMT  
		Size: 19.3 MB (19307259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1635c04d19b6ccd693aa4b6182f0ec4167e78645cd4807e458c0fb7c7078d69`  
		Last Modified: Wed, 18 Nov 2026 21:51:56 GMT  
		Size: 460.7 MB (460701155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210bf60f99adf49c1c72ce127a8050dd4c92e8e1aaf122a32d0506da71d0f4ae`  
		Last Modified: Wed, 18 Nov 2026 21:51:48 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41be54bf2d27a9d9860edd516ba5414c8bd5da462ea0645f433ce9c6a3accadc`  
		Last Modified: Wed, 18 Nov 2026 21:51:49 GMT  
		Size: 16.5 MB (16460494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a967d635a23bdcb03685df2bd40bea1ef3a08830260ce05bf1cce5a56c766f06`  
		Last Modified: Wed, 18 Nov 2026 21:51:49 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f35a2ea3c089a44071fbf435ac7d25a474b10923a7bc3e0c1ca2470f835547d`  
		Last Modified: Wed, 18 Nov 2026 21:51:50 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9819a32c5203dba8e1552c123eebcaadbd410839ab9c2870c7ebe68fd9e91b82`  
		Last Modified: Wed, 18 Nov 2026 21:51:50 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8837ddfdb9d449fd24bbedca350e75865857e56e4efe6ac16211426aebdf10`  
		Last Modified: Wed, 18 Nov 2026 21:51:50 GMT  
		Size: 5.0 KB (5001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:705596a41e96d557327cac5e0abed9f479f224de4fee2c8c508d9e9bb220bf03`  
		Last Modified: Wed, 18 Nov 2026 21:51:52 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:190f07835e6250846ca131fdaa4ef3a73b7234930cdd2f26831c1acf4526a65d`  
		Last Modified: Wed, 18 Nov 2026 21:51:52 GMT  
		Size: 74.5 KB (74523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70b2ec9a1e97e8d2a482aacc0e13e06a33c2accee4421980a440306988ed649b`  
		Last Modified: Wed, 18 Nov 2026 21:51:52 GMT  
		Size: 1.1 KB (1054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ebb6c8941411ef71e485e1ff9cef954e09923be171378b1d38bb610c1ac6de`  
		Last Modified: Wed, 18 Nov 2026 21:51:53 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:4ad374ec175b336aa4360fd5b1d83864f8030fa1fa47d671052281c95f2f35cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6121764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba36dd1c543a013350920afab7c2aad8676530cc7293b8cb3139cf7c8bea07f8`

```dockerfile
```

-	Layers:
	-	`sha256:3c73869f59785840a69e3baf25c7782713d54ee87c6bff5228e858ac93a87988`  
		Last Modified: Wed, 18 Nov 2026 21:51:48 GMT  
		Size: 6.1 MB (6078538 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8e1024210f22f262eeff27a568dd95ba61936b714e2ec4b51de96c5f9f31190`  
		Last Modified: Wed, 18 Nov 2026 21:51:48 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.5` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:2376a3a22432d3e095698bdc64bf3ab39e65b69b50c23d93b3f7909891c30de4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **548.7 MB (548715488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cdc4477a3499e0698847142f532f613fdb0bcedd7191119506a9c13d740ca9e`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 18 Nov 2026 11:36:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:36:57 GMT
ENV container oci
# Wed, 18 Nov 2026 11:36:58 GMT
COPY dir:eee7fabfac1d2f3fb8ad9983912ceacfb7a2d25b2212bd95c123c4d0d51b81b6 in /      
# Wed, 18 Nov 2026 11:36:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:36:59 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:36:59 GMT
COPY dir:7cfd200b3d4ce0bf8a330208f8ea235e169c726ae2f96fcd7ec87ed6561a62d5 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:36:59 GMT
COPY dir:7cfd200b3d4ce0bf8a330208f8ea235e169c726ae2f96fcd7ec87ed6561a62d5 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:37:00 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:36:26Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:36:26Z" "architecture"="aarch64" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:36:26Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 21:42:15 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 18 Nov 2026 21:42:15 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:48:37 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 18 Nov 2026 21:48:38 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 18 Nov 2026 21:48:38 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 18 Nov 2026 21:48:38 GMT
RUN fc-cache -v # buildkit
# Wed, 18 Nov 2026 21:48:38 GMT
WORKDIR /usr/share/kibana
# Wed, 18 Nov 2026 21:48:38 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 18 Nov 2026 21:48:38 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 18 Nov 2026 21:48:38 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:48:38 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 18 Nov 2026 21:48:38 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:48:39 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 18 Nov 2026 21:48:40 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 18 Nov 2026 21:48:40 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 18 Nov 2026 21:48:40 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Wed, 18 Nov 2026 21:48:40 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 18 Nov 2026 21:48:41 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 18 Nov 2026 21:48:41 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 18 Nov 2026 21:48:41 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 18 Nov 2026 21:48:41 GMT
USER 1000
```

-	Layers:
	-	`sha256:43a13a3b1a9d32ca4e00b11b77daa68db7900831eb27e2a0bfa523b9764e2ff5`  
		Last Modified: Wed, 18 Nov 2026 17:00:22 GMT  
		Size: 38.7 MB (38744735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b013f29c7ee664b77114c11f526a0867970c1df023bf2c88a5bd9355d853a0d6`  
		Last Modified: Wed, 18 Nov 2026 21:49:58 GMT  
		Size: 19.3 MB (19254207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff778e059a9030df17e20e5dfbdc16d489d148a42ac6c0213b9e372af2bdd5a1`  
		Last Modified: Wed, 18 Nov 2026 21:50:13 GMT  
		Size: 474.2 MB (474159574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95282477c8486006b60f9404e069b9dac5ea1fc1e2bb85a3348721aa8f908d76`  
		Last Modified: Wed, 18 Nov 2026 21:49:57 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc56693cdc54870247f43ff25fcb7f4a6a8ec9a8d87a6a333f21dd6c4d55321d`  
		Last Modified: Wed, 18 Nov 2026 21:49:58 GMT  
		Size: 16.5 MB (16460484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11925e620b89ce45d37fdb4c7b2fe3c84b53b9e445157a1cf2f38b8d0fd5d44e`  
		Last Modified: Wed, 18 Nov 2026 21:49:58 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3c8e85e86abb90b7784e1c32e998b478ebad0f2de057d3446838c5a547c291d`  
		Last Modified: Wed, 18 Nov 2026 21:49:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6481ee7121e84a72c3e967be9e0939542c14a6b3dd37b5b9edcad694560c438`  
		Last Modified: Wed, 18 Nov 2026 21:50:00 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bebd8936c086e6e7517345535ebb6c05bdb2d850559c0b91b73e9fd4fec90ea`  
		Last Modified: Wed, 18 Nov 2026 21:50:00 GMT  
		Size: 5.0 KB (5001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6908d46e4c05fed518a565406872ac9043f743162430eea74e1b4762b020019c`  
		Last Modified: Wed, 18 Nov 2026 21:50:01 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a70cfde4df3b7f064997755326efd1d8a96e2022846c2bb35e0b5c5931eee24f`  
		Last Modified: Wed, 18 Nov 2026 21:50:01 GMT  
		Size: 73.4 KB (73447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:707ee132fbc6f1c821292d3dfaa02c782e1ae2a5be8c25d9273587e31aee1cac`  
		Last Modified: Wed, 18 Nov 2026 21:50:01 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba85e14a4ae9e51ad98b3ac3d5ffb8b9b9339e9f5f676075eb6eb93326480bdb`  
		Last Modified: Wed, 18 Nov 2026 21:50:02 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:4bcaecb2edfe506650ee7779bd2136cc649a9f4e20312372c09a270f2b9e8501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6118911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b330c224e695da676ec7c91e17ba28b33153a0cbf22c4d456731f3bad1c4277f`

```dockerfile
```

-	Layers:
	-	`sha256:92925fcb33306094067bba957b9a3c86805bb1e923507f59bd83049c94744869`  
		Last Modified: Wed, 18 Nov 2026 21:49:57 GMT  
		Size: 6.1 MB (6075428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11dce60ed591112807ac3da58a5aa61f358257717f03e0bcaaa9d3593304d79f`  
		Last Modified: Wed, 18 Nov 2026 21:49:57 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
