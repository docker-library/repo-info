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
$ docker pull kibana@sha256:8a0fcf6d727c68028562fbca6bbe2d25d3359ffc608dea1b9ab4bca61a9c83d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.8` - linux; amd64

```console
$ docker pull kibana@sha256:f149e3151f9244900c1eae29ecee8099443b47e834ccdd77e8d3e5ba72249cad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.6 MB (545583832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad03e66b7605b73a7f545a6f94b0930477601d62e01b9b03bcead138631cb46`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:11:03 GMT
ENV container oci
# Fri, 20 Nov 2026 18:11:03 GMT
COPY dir:5ceae98eafdeee79793af167e1b53d2c048d524a5506bb0c01569c4bbeaef4f8 in /      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:11:04 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /root/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:10:41Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:10:41Z" "architecture"="x86_64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:10:41Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:09:05 GMT
EXPOSE map[5601/tcp:{}]
# Mon, 23 Nov 2026 22:09:05 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:18:10 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Mon, 23 Nov 2026 22:18:11 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Mon, 23 Nov 2026 22:18:11 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Mon, 23 Nov 2026 22:18:11 GMT
RUN fc-cache -v # buildkit
# Mon, 23 Nov 2026 22:18:11 GMT
WORKDIR /usr/share/kibana
# Mon, 23 Nov 2026 22:18:11 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Mon, 23 Nov 2026 22:18:11 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 23 Nov 2026 22:18:11 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:18:11 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Mon, 23 Nov 2026 22:18:11 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 22:18:12 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Mon, 23 Nov 2026 22:18:13 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Mon, 23 Nov 2026 22:18:13 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Mon, 23 Nov 2026 22:18:13 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Mon, 23 Nov 2026 22:18:13 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Mon, 23 Nov 2026 22:18:13 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 23 Nov 2026 22:18:13 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Mon, 23 Nov 2026 22:18:13 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Mon, 23 Nov 2026 22:18:13 GMT
USER 1000
```

-	Layers:
	-	`sha256:42dd82cfea990337e85629f4800f64d42e5fca052db254cd3386d99051476958`  
		Last Modified: Fri, 20 Nov 2026 19:55:30 GMT  
		Size: 40.6 MB (40646846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d276fc2a04612f222defc1d1c0d16e1bfd33da9b8076213f5628c22a848a2975`  
		Last Modified: Mon, 23 Nov 2026 22:19:21 GMT  
		Size: 19.3 MB (19312563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf80af3283e6f5f760d270fe8ef49d074d97dd054d4b250d75ed31e6cc0e078`  
		Last Modified: Mon, 23 Nov 2026 22:19:30 GMT  
		Size: 469.1 MB (469066031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3b8de7c4cf21a533bc87be841014fe26da409b8493889d294c1bf60df54c50`  
		Last Modified: Mon, 23 Nov 2026 22:19:20 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc33114cca1a099707142e846045cbe8e18f1f7f8c541d3371fe218943cac5d`  
		Last Modified: Mon, 23 Nov 2026 22:19:21 GMT  
		Size: 16.5 MB (16460475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc313c57535803201c6832a457fc04ccc2e2b2b30e104f8df3b6d1129ce9099d`  
		Last Modified: Mon, 23 Nov 2026 22:19:21 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d795a8e55f2b06ef4afabc75a4b171c40b1dd7f5c64b7f7e5c457d722c19c066`  
		Last Modified: Mon, 23 Nov 2026 22:19:23 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6748c30b6fc4f387b6cdf4974fd9a99d441a0ea4b030a704280799f445172e6d`  
		Last Modified: Mon, 23 Nov 2026 22:19:23 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5962dae0dfc90f034ee084db52daf6246d5122760e1f62e1a51c8f75ad15f5d`  
		Last Modified: Mon, 23 Nov 2026 22:19:23 GMT  
		Size: 4.9 KB (4927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2f5049d1b2db2e3d101765dd357e7ed6790e03bba2beb38fbab2c1f13a79fc0`  
		Last Modified: Mon, 23 Nov 2026 22:19:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb265f3db79526832050ab29cbf848b73f4bb77858654e426537a65eba05cb27`  
		Last Modified: Mon, 23 Nov 2026 22:19:24 GMT  
		Size: 74.5 KB (74525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a58b631d9e17e34b42b997da0281136409062960b8a4196ecbb96c0c790128`  
		Last Modified: Mon, 23 Nov 2026 22:19:24 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6522c75252920d7e1a65a3547094e4a4a953f405383b49d53b5b87d3bee455ee`  
		Last Modified: Mon, 23 Nov 2026 22:19:25 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:30824da05024ea6c969e536dfb3b714268bd82e6c48c65b595a8e415c3579fa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5901731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb8543ee1c700cded391dfccaab37594e6eb09a421d228f37d4cef97237e296c`

```dockerfile
```

-	Layers:
	-	`sha256:e063b22928887997585b75bee1fdf64dedcdc454717c65c3eb5a8a7e7b1ca0bb`  
		Last Modified: Mon, 23 Nov 2026 22:19:20 GMT  
		Size: 5.9 MB (5858505 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c66478a91582c5131e52bf28a2551bf6e7ba9bc8797a318f6ba88392465a9ce8`  
		Last Modified: Mon, 23 Nov 2026 22:19:20 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:55d6f49fbbdf0e4cbbc212d9721b1c62baf2adbe1681cb4605286b5fd40110be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **557.1 MB (557053238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df988923f0d57dda449cc44d3aee956e6c586c7b9b041b44ed8686279bb623a9`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:12:47 GMT
ENV container oci
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:2777349c454497d0bc88142806b0acc7931a2a02082de3b6e563fd8f4b29edfa in /      
# Fri, 20 Nov 2026 18:12:49 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:12:49 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /root/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:12:15Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:12:15Z" "architecture"="aarch64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:12:15Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:07:46 GMT
EXPOSE map[5601/tcp:{}]
# Mon, 23 Nov 2026 22:07:46 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:15:20 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Mon, 23 Nov 2026 22:15:21 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Mon, 23 Nov 2026 22:15:21 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Mon, 23 Nov 2026 22:15:21 GMT
RUN fc-cache -v # buildkit
# Mon, 23 Nov 2026 22:15:21 GMT
WORKDIR /usr/share/kibana
# Mon, 23 Nov 2026 22:15:21 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Mon, 23 Nov 2026 22:15:21 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 23 Nov 2026 22:15:21 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:15:21 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Mon, 23 Nov 2026 22:15:22 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 22:15:23 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Mon, 23 Nov 2026 22:15:24 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Mon, 23 Nov 2026 22:15:24 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Mon, 23 Nov 2026 22:15:24 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Mon, 23 Nov 2026 22:15:24 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Mon, 23 Nov 2026 22:15:24 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 23 Nov 2026 22:15:24 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Mon, 23 Nov 2026 22:15:24 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Mon, 23 Nov 2026 22:15:24 GMT
USER 1000
```

-	Layers:
	-	`sha256:aba77be659b3ca4c2aca19e9a0e50914427b3b809b11dc864d16e2377d40e17a`  
		Last Modified: Fri, 20 Nov 2026 19:55:56 GMT  
		Size: 38.7 MB (38704070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d84e8c55b85a0327565ecd6a4cd7980b3f50412d6338d5745bf88e1fbe9e24`  
		Last Modified: Mon, 23 Nov 2026 22:16:46 GMT  
		Size: 19.3 MB (19265635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f82e80c0f687489e313d463698c90abeac0b8d005bfb819487afff812543c5`  
		Last Modified: Mon, 23 Nov 2026 22:16:57 GMT  
		Size: 482.5 MB (482526622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad15752644103553773cc614cae53a4f79dcc51a395ffeec9361da0016484c5`  
		Last Modified: Mon, 23 Nov 2026 22:16:45 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5acedf7867aa5b19c10e2b167ea8be7144e2b31e9685b8d32002891ace21146e`  
		Last Modified: Mon, 23 Nov 2026 22:16:46 GMT  
		Size: 16.5 MB (16460493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4fda8c5121027a315cb2e15efc0330a78691c8265277fdc4d93e5b5dbe38b68`  
		Last Modified: Mon, 23 Nov 2026 22:16:46 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d61df2b02aed1400a15211aa053f753ddcd2c459f22dcce58b6ff386ff1524d`  
		Last Modified: Mon, 23 Nov 2026 22:16:47 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236cfae57f3a9932bf82d27b13564883c15103d1151e5583cd4367e426def7c2`  
		Last Modified: Mon, 23 Nov 2026 22:16:47 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:615ff56e8af7d34e5db6e4156d9b284b1c38d2c9ae718a1e605fe6edf5460031`  
		Last Modified: Mon, 23 Nov 2026 22:16:48 GMT  
		Size: 4.9 KB (4930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e313b318b3a59688beed9ea6f49495bfacb70ad1efe1ef5ecced7afcb6d33db`  
		Last Modified: Mon, 23 Nov 2026 22:16:49 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34369e665e59e6af89c3ccc1fd6343f895ffba85f1e5a2eff470c0f6179acb79`  
		Last Modified: Mon, 23 Nov 2026 22:16:49 GMT  
		Size: 73.5 KB (73450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69402f5bbc6fda9826d1a7999f53d22f47311f88913cb0a70ff4fb470bdf8e5a`  
		Last Modified: Mon, 23 Nov 2026 22:16:49 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d343bde98c1d382fdf876ead32742c194eea19ae8b8410e28a0dfe5f50cc436`  
		Last Modified: Mon, 23 Nov 2026 22:16:50 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:0694ab06ccf0ba37dfcb60e6066d93cf3bde8abcaea24a25cb4c2f4fc9ab177a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5898878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8e3b76409a33f3a5ac57bd6c4093ecfceb0c572e751c318fef7239c349de052`

```dockerfile
```

-	Layers:
	-	`sha256:14728ff87a6d2c7dd1acc7e79e8f4ab3afc3325c844e7ff71dbcf881f27938e7`  
		Last Modified: Mon, 23 Nov 2026 22:16:45 GMT  
		Size: 5.9 MB (5855395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80d82cf614cf3a5035d615d1188f41191975ab7a79ae884665bd4e1beb24e85c`  
		Last Modified: Mon, 23 Nov 2026 22:16:45 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.5`

```console
$ docker pull kibana@sha256:fa2bd15e8d3a0208cc729143ab05280998878f78ae12eb86ca8ae6f125238d16
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.5` - linux; amd64

```console
$ docker pull kibana@sha256:fa2b785105db1c9db12231227881568237835a72081c71c0c5dbb7b19aab386f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.2 MB (537221328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a3886c6d031f5cfa30bb22863bd17677ad01d2112525ddb8d443c9390bc4e3`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:11:03 GMT
ENV container oci
# Fri, 20 Nov 2026 18:11:03 GMT
COPY dir:5ceae98eafdeee79793af167e1b53d2c048d524a5506bb0c01569c4bbeaef4f8 in /      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:11:04 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /root/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:10:41Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:10:41Z" "architecture"="x86_64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:10:41Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:09:12 GMT
EXPOSE map[5601/tcp:{}]
# Mon, 23 Nov 2026 22:09:12 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:17:32 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Mon, 23 Nov 2026 22:17:33 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Mon, 23 Nov 2026 22:17:33 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Mon, 23 Nov 2026 22:17:33 GMT
RUN fc-cache -v # buildkit
# Mon, 23 Nov 2026 22:17:33 GMT
WORKDIR /usr/share/kibana
# Mon, 23 Nov 2026 22:17:33 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Mon, 23 Nov 2026 22:17:33 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 23 Nov 2026 22:17:33 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:17:33 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Mon, 23 Nov 2026 22:17:33 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 22:17:34 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Mon, 23 Nov 2026 22:17:35 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Mon, 23 Nov 2026 22:17:35 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Mon, 23 Nov 2026 22:17:35 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Mon, 23 Nov 2026 22:17:35 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Mon, 23 Nov 2026 22:17:35 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 23 Nov 2026 22:17:35 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Mon, 23 Nov 2026 22:17:35 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Mon, 23 Nov 2026 22:17:35 GMT
USER 1000
```

-	Layers:
	-	`sha256:42dd82cfea990337e85629f4800f64d42e5fca052db254cd3386d99051476958`  
		Last Modified: Fri, 20 Nov 2026 19:55:30 GMT  
		Size: 40.6 MB (40646846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfb6908300499a2a328adaf138efbbbe67e143268580249c23a7ff1f0a8ef84d`  
		Last Modified: Mon, 23 Nov 2026 22:18:48 GMT  
		Size: 19.3 MB (19312485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbc6716208c562b4aa33a3a3ab178dbe78fbbb6385fe825327afd7301fd1eb01`  
		Last Modified: Mon, 23 Nov 2026 22:18:55 GMT  
		Size: 460.7 MB (460703510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f273002d6d42dd9859edc7e146ed3132a614b620ee127f8f332cbcda81c3a6fb`  
		Last Modified: Mon, 23 Nov 2026 22:18:46 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3758d77c620c508682c1a1b544436e32c65698b295c3b91977a7abbef98cfe2e`  
		Last Modified: Mon, 23 Nov 2026 22:18:48 GMT  
		Size: 16.5 MB (16460487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:883398b6958a9deb0c6f51af3d824538e0552f7b348fa80258dfd091e01e8a7a`  
		Last Modified: Mon, 23 Nov 2026 22:18:48 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5fef58b0819ed1cc2357b835232759df99ea3a4e41739110a214ba3b2aef28c`  
		Last Modified: Mon, 23 Nov 2026 22:18:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aec74eb1b119d57377d7b6ec8abee4f188895b3b3f82edc3e65692f5b845c20`  
		Last Modified: Mon, 23 Nov 2026 22:18:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914e2e3d2fc53f8d4cbc8932d9909b7b0a7f0ffe34c6a73c737bbc39930f761c`  
		Last Modified: Mon, 23 Nov 2026 22:18:49 GMT  
		Size: 5.0 KB (5006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe1dad71b5aff5ad74ba4d5118ed3a2f68e19d94a53eead4ff8162a582b0ab4a`  
		Last Modified: Mon, 23 Nov 2026 22:18:50 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee50c5125acc0f3912e47615d1c04ccd5eb27236b36906279c9d519cc28aafe5`  
		Last Modified: Mon, 23 Nov 2026 22:18:51 GMT  
		Size: 74.5 KB (74524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1321f3f50de33b6591cd4073f3766c78a4dc3f42f6d5b5310b92f12850a87651`  
		Last Modified: Mon, 23 Nov 2026 22:18:51 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0630ed189f6009a2f6d6c67c0b83a64c47d5d577ac4fff13f1f9bd11332be9ff`  
		Last Modified: Mon, 23 Nov 2026 22:18:52 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:dc8512ed6fe5334c343c05421e16458d0200a9263e44ff07713217ee8623f1a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6121796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eef5723853ca11cfd3a427d996d7730e4207d3cd0f3c91a765d0f9a478bd6b01`

```dockerfile
```

-	Layers:
	-	`sha256:0201526d9f27ccd6c97531262a3df2ce81876709fd26e050e9b864c16e7062aa`  
		Last Modified: Mon, 23 Nov 2026 22:18:47 GMT  
		Size: 6.1 MB (6078570 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:208972b8ecf44693c7dbd68329bf48ef9ef0a84f9ae74b43d09cc2729c583899`  
		Last Modified: Mon, 23 Nov 2026 22:18:46 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.5` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:a694183563530ced609b31fe5ba6dd9342d37c08c65341592459256be1a8c268
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **548.7 MB (548694620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a29e97b21e81de231ee8bd217336b3d83c5bdbbc6af51de50fdcc964da3e376`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:12:47 GMT
ENV container oci
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:2777349c454497d0bc88142806b0acc7931a2a02082de3b6e563fd8f4b29edfa in /      
# Fri, 20 Nov 2026 18:12:49 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:12:49 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /root/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:12:15Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:12:15Z" "architecture"="aarch64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:12:15Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:07:52 GMT
EXPOSE map[5601/tcp:{}]
# Mon, 23 Nov 2026 22:07:52 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:14:39 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Mon, 23 Nov 2026 22:14:40 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Mon, 23 Nov 2026 22:14:40 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Mon, 23 Nov 2026 22:14:40 GMT
RUN fc-cache -v # buildkit
# Mon, 23 Nov 2026 22:14:40 GMT
WORKDIR /usr/share/kibana
# Mon, 23 Nov 2026 22:14:40 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Mon, 23 Nov 2026 22:14:40 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 23 Nov 2026 22:14:40 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:14:40 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Mon, 23 Nov 2026 22:14:40 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 22:14:41 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Mon, 23 Nov 2026 22:14:42 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Mon, 23 Nov 2026 22:14:42 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Mon, 23 Nov 2026 22:14:42 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Mon, 23 Nov 2026 22:14:42 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Mon, 23 Nov 2026 22:14:42 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 23 Nov 2026 22:14:42 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Mon, 23 Nov 2026 22:14:42 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Mon, 23 Nov 2026 22:14:42 GMT
USER 1000
```

-	Layers:
	-	`sha256:aba77be659b3ca4c2aca19e9a0e50914427b3b809b11dc864d16e2377d40e17a`  
		Last Modified: Fri, 20 Nov 2026 19:55:56 GMT  
		Size: 38.7 MB (38704070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b2da13ccd3311dec5dfdbf50fb848d8b4eb211f36f12b02588de564b6d9aad`  
		Last Modified: Mon, 23 Nov 2026 22:16:00 GMT  
		Size: 19.3 MB (19265514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276747e9a0ea1d2e3dcb20109e34e5c4d1a76e579fa007825908794c2a803678`  
		Last Modified: Mon, 23 Nov 2026 22:16:12 GMT  
		Size: 474.2 MB (474168061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc750c66b72ba17cef8162bc98d45d369e2bf7017181a273d794b2fdbfb40b6`  
		Last Modified: Mon, 23 Nov 2026 22:15:58 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:445705d83d934d502f0ab43b45c2473a1175a8168133bdf03b407b07c440d3ac`  
		Last Modified: Mon, 23 Nov 2026 22:16:00 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa844401ffa2d07f6376896080d20d9b23a4e4c329a5366d97049e13e751816`  
		Last Modified: Mon, 23 Nov 2026 22:16:00 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ded6a4479ad84171d0d7beaba73f9b5d18926c40e117bdc5fd59ca58422349c`  
		Last Modified: Mon, 23 Nov 2026 22:16:01 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a794d83e055c7cc3006c21554b059a9029af3fe53941f93b351e6a45efdd0bc`  
		Last Modified: Mon, 23 Nov 2026 22:16:01 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6e54bc76a50086808621eda322d3a6c663474b895b94ff1572e9376e6e54cf5`  
		Last Modified: Mon, 23 Nov 2026 22:16:01 GMT  
		Size: 5.0 KB (5001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3236e90f50ffa8eb54892da9e61091e49ed7166415e6b1f61ddecd665e65c3`  
		Last Modified: Mon, 23 Nov 2026 22:16:02 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4557ff0a042a6dcbfc74a35468a77e031415829bf820761a28f4e560250c66ae`  
		Last Modified: Mon, 23 Nov 2026 22:16:02 GMT  
		Size: 73.4 KB (73447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:770bb1c9c3185aab490ee99ea816382b01dfc6ad1bb9f89075403eb2e609aa57`  
		Last Modified: Mon, 23 Nov 2026 22:16:03 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c267c462d0c5c9cb506a1ed58b95225590a52442b3a4406f8bd773ef4114ec5`  
		Last Modified: Mon, 23 Nov 2026 22:16:03 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:452d8b56c3ec813927f0bf42b4863da293d6c3a4af23800d4bd8e84130b3df7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6118943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:865c2e3dbd56fba3daa80d8c095e32ae2428d94703260076730a4548c6c291ed`

```dockerfile
```

-	Layers:
	-	`sha256:1b98f27a754b20306a9a02b91f8c160678310c273e3d37d4cb607bc74cee7780`  
		Last Modified: Mon, 23 Nov 2026 22:15:59 GMT  
		Size: 6.1 MB (6075460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47f2cc305dd4c7528b616eb2c0d0a34569b08f5826e8cd8364c14bf4d7a5457f`  
		Last Modified: Mon, 23 Nov 2026 22:15:58 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
