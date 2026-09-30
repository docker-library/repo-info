<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.22`](#kibana81922)
-	[`kibana:9.4.6`](#kibana946)
-	[`kibana:9.5.3`](#kibana953)

## `kibana:8.19.22`

```console
$ docker pull kibana@sha256:35544f1ff28abc0ec3547ca0e81089f2e1640f0f5c6c657fd39f921c217673a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:8.19.22` - linux; amd64

```console
$ docker pull kibana@sha256:58027b66e2bce45fbbd038fe91bd39450594259446fff97bc41fdf3bb9e46505
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **595.8 MB (595774732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e09fa15f2170c3e61ed01cc412799aa66401250eefcd098853be5bd45fb20ccc`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 23 Sep 2026 16:59:08 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 23 Sep 2026 16:59:08 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 23 Sep 2026 17:12:42 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 23 Sep 2026 17:12:42 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 23 Sep 2026 17:12:42 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 23 Sep 2026 17:12:43 GMT
RUN fc-cache -v # buildkit
# Wed, 23 Sep 2026 17:12:43 GMT
WORKDIR /usr/share/kibana
# Wed, 23 Sep 2026 17:12:43 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 23 Sep 2026 17:12:43 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 23 Sep 2026 17:12:43 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Sep 2026 17:12:43 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 23 Sep 2026 17:12:43 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 17:12:44 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 23 Sep 2026 17:12:45 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 23 Sep 2026 17:12:45 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 23 Sep 2026 17:12:45 GMT
LABEL org.label-schema.build-date=2026-09-18T12:10:48.807Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=fd8e6f336cd7a18d0fd805de4608e1e38e0da163 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.22 org.opencontainers.image.created=2026-09-18T12:10:48.807Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=fd8e6f336cd7a18d0fd805de4608e1e38e0da163 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.22
# Wed, 23 Sep 2026 17:12:45 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 23 Sep 2026 17:12:45 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 23 Sep 2026 17:12:45 GMT
USER 1000
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb928839cbb23f3ce5746513ea012bf8d049eb717eb30c60769d6ab68e78114`  
		Last Modified: Wed, 23 Sep 2026 17:14:06 GMT  
		Size: 9.4 MB (9410140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c262190f5e5f7431ae79bb3bab4e1720ab88443433b5d1135add61f05e4848`  
		Last Modified: Wed, 23 Sep 2026 17:14:16 GMT  
		Size: 540.0 MB (539956498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae50bbef001406511f9df082469e08441b242a14a7464148d057d0b02baa188`  
		Last Modified: Wed, 23 Sep 2026 17:14:05 GMT  
		Size: 9.5 KB (9528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8493ae575cb101bf3dfa81055a4feb368bc238a63280b00b53e67daf5c85314d`  
		Last Modified: Wed, 23 Sep 2026 17:14:07 GMT  
		Size: 16.5 MB (16460477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7d78c8e75a6ae5e0599451b37da9da5b0d9b7c2cbc8e3bd45a4b0f0a3453e63`  
		Last Modified: Wed, 23 Sep 2026 17:14:07 GMT  
		Size: 5.2 KB (5241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdfde8880478fb99729cb07e3547fe8c3428e5ab8baafdea0463522141c48ad0`  
		Last Modified: Wed, 23 Sep 2026 17:14:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:579aebeef798654faf5fc13dc79b281ceec612c50dcb7b2b2fd492f6b2b2a7a6`  
		Last Modified: Wed, 23 Sep 2026 17:14:08 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fb44c6465f8421ec2288fac471476b4e144b945870f1a3c0d53c27a8a8f07f7`  
		Last Modified: Wed, 23 Sep 2026 17:14:08 GMT  
		Size: 4.8 KB (4820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2444486a3fb980bbdbd8879489e9b53a2497651cca70d87db38151ae30f17540`  
		Last Modified: Wed, 23 Sep 2026 17:14:09 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8312f51ddbc28f13a3633fe25c61b550df3d2474a78f23fe3327a85e1d12242`  
		Last Modified: Wed, 23 Sep 2026 17:14:09 GMT  
		Size: 161.7 KB (161735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd0543c77cc4f5838e0e808899ffdd7ed2019cc466045e5f2651950c5c9f78ec`  
		Last Modified: Wed, 23 Sep 2026 17:14:09 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.22` - unknown; unknown

```console
$ docker pull kibana@sha256:b2fff67cae52d9ae16a3a6237614c35c9194c88f43438c5255c41a5123aa5607
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4856847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d33203d5e18a24f162989787a6e56a394df60f403af39f1d1aa6a41945e4d307`

```dockerfile
```

-	Layers:
	-	`sha256:13dd58a2cc117a88eb1ba5ada01ef209754895243a2f14a090903169a29a0419`  
		Last Modified: Wed, 23 Sep 2026 17:14:06 GMT  
		Size: 4.8 MB (4815932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c8d3d9892cb8a561e3d81b5a8abbab9f566083bc386eb1364eb0fa3ea33b4c3`  
		Last Modified: Wed, 23 Sep 2026 17:14:05 GMT  
		Size: 40.9 KB (40915 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:8.19.22` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:9124a8214c6d41cb82929db4b11a7d71b35ffe8347e5f6235cbfdb7789499101
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **608.4 MB (608448516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7db0c07034039b4860676f6b778d7ec88d6534cd0163d53268ce6f10be25ab17`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 23 Sep 2026 16:59:27 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 23 Sep 2026 16:59:27 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 23 Sep 2026 17:10:03 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 23 Sep 2026 17:10:04 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 23 Sep 2026 17:10:04 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 23 Sep 2026 17:10:04 GMT
RUN fc-cache -v # buildkit
# Wed, 23 Sep 2026 17:10:04 GMT
WORKDIR /usr/share/kibana
# Wed, 23 Sep 2026 17:10:04 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 23 Sep 2026 17:10:04 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 23 Sep 2026 17:10:04 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Sep 2026 17:10:04 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 23 Sep 2026 17:10:04 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 23 Sep 2026 17:10:05 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 23 Sep 2026 17:10:07 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 23 Sep 2026 17:10:07 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 23 Sep 2026 17:10:07 GMT
LABEL org.label-schema.build-date=2026-09-18T12:10:48.807Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=fd8e6f336cd7a18d0fd805de4608e1e38e0da163 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.22 org.opencontainers.image.created=2026-09-18T12:10:48.807Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=fd8e6f336cd7a18d0fd805de4608e1e38e0da163 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.22
# Wed, 23 Sep 2026 17:10:07 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 23 Sep 2026 17:10:07 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 23 Sep 2026 17:10:07 GMT
USER 1000
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce4d6230dab5ce0cb59eb6e65408abac252df54242700640ec205998ddee9475`  
		Last Modified: Wed, 23 Sep 2026 17:11:42 GMT  
		Size: 9.4 MB (9431204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cabcb87fcf2842ee5850937f8b53942793a82669f47aa625ca7379c1b7fd8c6`  
		Last Modified: Wed, 23 Sep 2026 17:11:52 GMT  
		Size: 553.4 MB (553435646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b41469c368cbb24fd9c36d7b552a5078b7dc41517dd0051957372c1560a0bbd`  
		Last Modified: Wed, 23 Sep 2026 17:11:41 GMT  
		Size: 9.1 KB (9098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a3c65497dda25d0c03f3fe0a37dcc9ff44bec25966fa8c5e264832b71f01e7`  
		Last Modified: Wed, 23 Sep 2026 17:11:42 GMT  
		Size: 16.5 MB (16460493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eda3e09911518a460c9ae62a3c3ab6f65993f001dfe34833ef5f53d149ede0ec`  
		Last Modified: Wed, 23 Sep 2026 17:11:42 GMT  
		Size: 5.2 KB (5239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c16f6deba96718caada8a2c4da273724a6d7c8bb425fc4b7c885b38d603a0969`  
		Last Modified: Wed, 23 Sep 2026 17:11:44 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d74b29431b48e793069d9b9b52b3de880895152cf0dcd6bddb10df399e221d`  
		Last Modified: Wed, 23 Sep 2026 17:11:44 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee66c972eb3b573ab2338a9cad35e7ad1f0fcddae2052f5260ef37ebe6cee0e`  
		Last Modified: Wed, 23 Sep 2026 17:11:44 GMT  
		Size: 4.8 KB (4822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5c4520e6a62868549e2c9fc1eac387e5c51156e9e84ce7fb1287d0551a417d`  
		Last Modified: Wed, 23 Sep 2026 17:11:45 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b9d4e5ca677cc4fcd6d607df39788cb844773285304af01fd62640faffc402d`  
		Last Modified: Wed, 23 Sep 2026 17:11:45 GMT  
		Size: 158.3 KB (158253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:978ae8320375adafb5af0e64cf06f31ce924521b8dcc3ba3c7adf3e199d5581c`  
		Last Modified: Wed, 23 Sep 2026 17:11:45 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.22` - unknown; unknown

```console
$ docker pull kibana@sha256:50b2a7bff21ffcc0c655a2025714eac661fd918668b9e0aa7f51caa112e5c058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4858159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af4c7adb7693673f80f9c980fdc18d8069ae7018dd343d1f63d253cf4e13776`

```dockerfile
```

-	Layers:
	-	`sha256:c018f250dd39d0757c7752b410e604626184afdc7d57cce2b63cd54d9f9c0c7a`  
		Last Modified: Wed, 23 Sep 2026 17:11:42 GMT  
		Size: 4.8 MB (4816996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e64dd34fc09fee31105207cf5307e9d41e1be906f645a3835ffd411eb5affa5`  
		Last Modified: Wed, 23 Sep 2026 17:11:41 GMT  
		Size: 41.2 KB (41163 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.6`

```console
$ docker pull kibana@sha256:608d95d7fedce528981087df6ce25ebccc9c52f7e75afcf9a82028c72d5ca158
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.6` - linux; amd64

```console
$ docker pull kibana@sha256:f32166bdb9b68c183f31bc47c651757ee8f426bdaffbe9963ab0ba70faa70459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **565.8 MB (565817463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab4f952793516156a0e49e78ba526718e4fadc83fe682b35f19bfce9e8bd77c3`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 07:43:40 GMT
ENV container oci
# Wed, 30 Sep 2026 07:43:40 GMT
COPY dir:01535d66c659bac5dc638e334bb8c0882e8bbe4dcc144deb448bf0673973267f in /      
# Wed, 30 Sep 2026 07:43:41 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:43:41 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:43:41 GMT
COPY dir:ab52b8f578b642c9cfffb8cfa8cb04095b99e8289c57b6d99f5db899ce19dbbd in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:43:41 GMT
COPY dir:ab52b8f578b642c9cfffb8cfa8cb04095b99e8289c57b6d99f5db899ce19dbbd in /root/buildinfo/      
# Wed, 30 Sep 2026 07:43:41 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:43:22Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T07:43:22Z" "architecture"="x86_64" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T07:43:22Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:04:15 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 30 Sep 2026 21:04:15 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:14:10 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 30 Sep 2026 21:14:11 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 30 Sep 2026 21:14:11 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 30 Sep 2026 21:14:11 GMT
RUN fc-cache -v # buildkit
# Wed, 30 Sep 2026 21:14:11 GMT
WORKDIR /usr/share/kibana
# Wed, 30 Sep 2026 21:14:11 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 30 Sep 2026 21:14:11 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 30 Sep 2026 21:14:11 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:14:11 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 30 Sep 2026 21:14:11 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 21:14:12 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 30 Sep 2026 21:14:13 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 30 Sep 2026 21:14:13 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 30 Sep 2026 21:14:13 GMT
LABEL org.label-schema.build-date=2026-08-26T20:30:47.515Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=692551ad493ed71169e295e2160446428ee00b15 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T20:30:47.515Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=692551ad493ed71169e295e2160446428ee00b15 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Wed, 30 Sep 2026 21:14:13 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 30 Sep 2026 21:14:13 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 30 Sep 2026 21:14:13 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 30 Sep 2026 21:14:13 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 30 Sep 2026 21:14:13 GMT
USER 1000
```

-	Layers:
	-	`sha256:dc56ef34398ed4f6c8151f31ee5784575bedb47794f5ba379ebc2a25834fac35`  
		Last Modified: Wed, 30 Sep 2026 08:42:23 GMT  
		Size: 40.7 MB (40700861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b653d9b2d1a0a31829c6c8c7cf8a428bf467cbed18303a5f588deafb4238ad2f`  
		Last Modified: Wed, 30 Sep 2026 21:15:22 GMT  
		Size: 19.3 MB (19316403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feece802bc0b31f0e14d22eac597dfbe215ac9f5ae6e9e3c313fbe3b796fd8e0`  
		Last Modified: Wed, 30 Sep 2026 21:15:31 GMT  
		Size: 489.2 MB (489241772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04771fadeb3b2cd077d4fc38d00701893757c3c6552eb1929498e1047d1e56a6`  
		Last Modified: Wed, 30 Sep 2026 21:15:21 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09019f927da965185b1186c69c9823a4d9ab3fc6b0061b48d058ae880fdd045e`  
		Last Modified: Wed, 30 Sep 2026 21:15:22 GMT  
		Size: 16.5 MB (16460486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6bc7c5f6cbbf5251a66646d0c77570a4b5a633516a66b4e4aa5e0b4d4b822eb`  
		Last Modified: Wed, 30 Sep 2026 21:15:22 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6fdb9b68152af2c4de138e079f42a3b290c63f9f2604f5f36bc8539a1f784f6`  
		Last Modified: Wed, 30 Sep 2026 21:15:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4d50c237ca7e2074e796c0e3df5f74aa920e7d5e1b93d04d0c90ed0974b0ac`  
		Last Modified: Wed, 30 Sep 2026 21:15:23 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64923f64de721ffe1a2601080dda9936c330954e1546adfb7fad62d2ecb3df3`  
		Last Modified: Wed, 30 Sep 2026 21:15:23 GMT  
		Size: 4.9 KB (4930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11bca5b611fb3d0a021c15e7190e47c6faeb94572b1d80944c951373fcf4e94e`  
		Last Modified: Wed, 30 Sep 2026 21:15:24 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58be3acf5123d4a8be9771414fad51110d02be12f07e896d3e91d46695439214`  
		Last Modified: Wed, 30 Sep 2026 21:15:24 GMT  
		Size: 74.5 KB (74546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2bc032f9f89afc15967f25822f721c7aff850093153fa08325526cec5b34220`  
		Last Modified: Wed, 30 Sep 2026 21:15:24 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:602bfac73976ef94fbdd54bc7a12f2eaa28b94bebf938de89923e4e01c8bd051`  
		Last Modified: Wed, 30 Sep 2026 21:15:26 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.6` - unknown; unknown

```console
$ docker pull kibana@sha256:17dd068d7ed8d714e9dd201af076fc11dbc625afa888fe27dba8bfcad5cb5e72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5949504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c6277aafe8f352c60c64c0d4fb8b49e696742c8288f99dcf71d45d26f1dcce9`

```dockerfile
```

-	Layers:
	-	`sha256:7434f584c6dffab0120cb65095f68fe8350e7797d50b738d20ac98658cf06a92`  
		Last Modified: Wed, 30 Sep 2026 21:15:21 GMT  
		Size: 5.9 MB (5906278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cdda446adeb65351c2f44e46516f45b5c3f222c77282a51d6738fed9e643110`  
		Last Modified: Wed, 30 Sep 2026 21:15:21 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.6` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:e309643b73f7f559faa6dce3e75ea3181a8733adeb1bce1fab9991d838679b39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **577.3 MB (577339077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25c02b2d53427d1c3e317bed467f3df023e26cd22e9ee658d7a735f41a8aab75`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 07:45:10 GMT
ENV container oci
# Wed, 30 Sep 2026 07:45:10 GMT
COPY dir:06d90a0b7db8992c03ff9664b8cd3e00c58fd39e054579d5795d410389dd5e96 in /      
# Wed, 30 Sep 2026 07:45:10 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:45:10 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:45:10 GMT
COPY dir:c0678317d7ed63442d60483211d5a1c6d09172186a4f2982932461d0f7e083bf in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:45:11 GMT
COPY dir:c0678317d7ed63442d60483211d5a1c6d09172186a4f2982932461d0f7e083bf in /root/buildinfo/      
# Wed, 30 Sep 2026 07:45:11 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:44:47Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T07:44:47Z" "architecture"="aarch64" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T07:44:47Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:03:29 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 30 Sep 2026 21:03:29 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:11:52 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 30 Sep 2026 21:11:53 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 30 Sep 2026 21:11:53 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 30 Sep 2026 21:11:53 GMT
RUN fc-cache -v # buildkit
# Wed, 30 Sep 2026 21:11:53 GMT
WORKDIR /usr/share/kibana
# Wed, 30 Sep 2026 21:11:54 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 30 Sep 2026 21:11:54 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 30 Sep 2026 21:11:54 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:11:54 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 30 Sep 2026 21:11:54 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 21:11:55 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 30 Sep 2026 21:11:56 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 30 Sep 2026 21:11:56 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 30 Sep 2026 21:11:56 GMT
LABEL org.label-schema.build-date=2026-08-26T20:30:47.515Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=692551ad493ed71169e295e2160446428ee00b15 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T20:30:47.515Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=692551ad493ed71169e295e2160446428ee00b15 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Wed, 30 Sep 2026 21:11:56 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 30 Sep 2026 21:11:56 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 30 Sep 2026 21:11:56 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 30 Sep 2026 21:11:56 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 30 Sep 2026 21:11:56 GMT
USER 1000
```

-	Layers:
	-	`sha256:b8f4af811c7c98a1b33bf1a9f90c3e1b1f2296b681895a0031b0560a5db8a0a4`  
		Last Modified: Wed, 30 Sep 2026 08:42:32 GMT  
		Size: 38.8 MB (38801364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f529d4225fc5fbfca324e3b4be36df6a6ad4308f6cd27ecce6d9cd3c1eba7955`  
		Last Modified: Wed, 30 Sep 2026 21:13:21 GMT  
		Size: 19.3 MB (19257122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:133ba76f27fc2f5d93652b4fa67a28f767ef864fa5ad082db1b7b1d4af6b374c`  
		Last Modified: Wed, 30 Sep 2026 21:13:31 GMT  
		Size: 502.7 MB (502723708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e31b62f40062ad4ec27ddb7870880b1e9826fb19944e4d401d905564eb7f57`  
		Last Modified: Wed, 30 Sep 2026 21:13:20 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a08fd741f8a7c118b6f0f97b83569dd37576025fcfeffe37c8bbfd2f5790c422`  
		Last Modified: Wed, 30 Sep 2026 21:13:21 GMT  
		Size: 16.5 MB (16460486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bff65cb6cf8e7945bf2f49ba9f458d0844e2da655656646e2018fdd54d48f4a`  
		Last Modified: Wed, 30 Sep 2026 21:13:21 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b5a1dc038970e876ef9047d31cf2b44cfb2971dc8bcb0344812faa403ddcea`  
		Last Modified: Wed, 30 Sep 2026 21:13:23 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cf4c7856214b92b3f55eec33bbf550bc66e5288e0d1cfb356dc9e11d910ba34`  
		Last Modified: Wed, 30 Sep 2026 21:13:23 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3edbeae4902a2b8ad3ff5a7659762f0eacff0fff6a480e00e08c59c238536b13`  
		Last Modified: Wed, 30 Sep 2026 21:13:23 GMT  
		Size: 4.9 KB (4921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ed7f3350db82043d1ab9fe117315b45da3ab4d934e89748a3331871376fac0`  
		Last Modified: Wed, 30 Sep 2026 21:13:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a2314973cfa97e0bf92be60f7e85ff8f16dc01f11e3c4edff802f48342c30ac`  
		Last Modified: Wed, 30 Sep 2026 21:13:24 GMT  
		Size: 73.4 KB (73449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe2e44ab046d00531e83416b58e9efd60b5c0e35836cec6eeb6c743ec62704a`  
		Last Modified: Wed, 30 Sep 2026 21:13:24 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df22b763af41b0e773b131e72cff688b4344005a9945c46628c8cd41e0beaf3`  
		Last Modified: Wed, 30 Sep 2026 21:13:25 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.6` - unknown; unknown

```console
$ docker pull kibana@sha256:ba73bacbdde0f9a07630ad83d31e9af7ba4c857a1f5be60b6c9cd8e60310ce8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5946651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7201fc64cd8b6d328d2d3f75535d96a39fc77ff93bc370fc05d4ce5a479f92`

```dockerfile
```

-	Layers:
	-	`sha256:26f4ac7e456aef9c8ddc5c6f598f25b065f4f2b49fb87cb19479a7967963efff`  
		Last Modified: Wed, 30 Sep 2026 21:13:21 GMT  
		Size: 5.9 MB (5903168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e40f0d0c899ba7249be1486abde5b7ebbce01ec94a3bf49897cf1ac18f9bc6aa`  
		Last Modified: Wed, 30 Sep 2026 21:13:20 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.3`

```console
$ docker pull kibana@sha256:1cde8527e50c0afb3aece7c9b79514570356551efce58e8f2b895eda9f8113ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.3` - linux; amd64

```console
$ docker pull kibana@sha256:05efd0e8672cb1fa01287463dcbb8b1665544fe15b6fbac0045975cf6f2c9d7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **560.8 MB (560820784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2cde19c2c2b3a1c4a73041aa29b95f2feab844114346416d54ac048564850d`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 07:43:40 GMT
ENV container oci
# Wed, 30 Sep 2026 07:43:40 GMT
COPY dir:01535d66c659bac5dc638e334bb8c0882e8bbe4dcc144deb448bf0673973267f in /      
# Wed, 30 Sep 2026 07:43:41 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:43:41 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:43:41 GMT
COPY dir:ab52b8f578b642c9cfffb8cfa8cb04095b99e8289c57b6d99f5db899ce19dbbd in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:43:41 GMT
COPY dir:ab52b8f578b642c9cfffb8cfa8cb04095b99e8289c57b6d99f5db899ce19dbbd in /root/buildinfo/      
# Wed, 30 Sep 2026 07:43:41 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:43:22Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T07:43:22Z" "architecture"="x86_64" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T07:43:22Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:04:16 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 30 Sep 2026 21:04:16 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:12:47 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 30 Sep 2026 21:12:48 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 30 Sep 2026 21:12:48 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 30 Sep 2026 21:12:48 GMT
RUN fc-cache -v # buildkit
# Wed, 30 Sep 2026 21:12:48 GMT
WORKDIR /usr/share/kibana
# Wed, 30 Sep 2026 21:12:48 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 30 Sep 2026 21:12:48 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 30 Sep 2026 21:12:48 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:12:48 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 30 Sep 2026 21:12:48 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 21:12:49 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 30 Sep 2026 21:12:50 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 30 Sep 2026 21:12:50 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 30 Sep 2026 21:12:50 GMT
LABEL org.label-schema.build-date=2026-09-01T14:33:18.580Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=2169f1de4c917fce03905cc3110f3f523e2184d2 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T14:33:18.580Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=2169f1de4c917fce03905cc3110f3f523e2184d2 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Wed, 30 Sep 2026 21:12:50 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 30 Sep 2026 21:12:50 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 30 Sep 2026 21:12:50 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 30 Sep 2026 21:12:50 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 30 Sep 2026 21:12:50 GMT
USER 1000
```

-	Layers:
	-	`sha256:dc56ef34398ed4f6c8151f31ee5784575bedb47794f5ba379ebc2a25834fac35`  
		Last Modified: Wed, 30 Sep 2026 08:42:23 GMT  
		Size: 40.7 MB (40700861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85db44c730e3e51350f545436fff5a9c4c090860e2357bffdef38b4973435ee7`  
		Last Modified: Wed, 30 Sep 2026 21:13:56 GMT  
		Size: 19.3 MB (19316507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a6420303dbb298d0ff837ece1bef9c5430cfa323f6e7ffec71dce9c67e7ed8`  
		Last Modified: Wed, 30 Sep 2026 21:14:05 GMT  
		Size: 484.2 MB (484244919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d358ec097986025269763ab94e2f35526a17eb32677d18799d42927f46c9f36f`  
		Last Modified: Wed, 30 Sep 2026 21:13:55 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a3a62614a57810b7da698237e5a0faf22a4c67d28f54414da444c13d1a2a646`  
		Last Modified: Wed, 30 Sep 2026 21:13:56 GMT  
		Size: 16.5 MB (16460484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4a5495089911eee89af19abc501640fdd8833f52a16e16c8044ba988d0f534`  
		Last Modified: Wed, 30 Sep 2026 21:13:56 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30bb92dc1c070baf2c61a5c2012c9ba9fac540a61efea631d01eb098511c549`  
		Last Modified: Wed, 30 Sep 2026 21:13:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de628a0eefc196017ba3e995bb063bcdb15e0daedb95dff0c25d68f22dea95cb`  
		Last Modified: Wed, 30 Sep 2026 21:13:58 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59883a31369ec47e143b30a5b0d279db253d15db90f9c8f4b750d1b60510031d`  
		Last Modified: Wed, 30 Sep 2026 21:13:58 GMT  
		Size: 5.0 KB (5003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c10b9ca76735c897e98f08470f1fa7e05f05e06324bf79b751b7962e5011093`  
		Last Modified: Wed, 30 Sep 2026 21:13:59 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:828935171d3805fb8612b10d99b3d9dab4fdd7cfa69a87e170bc5d6f07030b2a`  
		Last Modified: Wed, 30 Sep 2026 21:13:59 GMT  
		Size: 74.5 KB (74547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1cd18a81e5c2d333cfdbf7ed65106beaff275d01afe098005b76c9520d0278e`  
		Last Modified: Wed, 30 Sep 2026 21:13:59 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bb6334990a798680e888a8b4e14abc914dbb638a33158363e6388c1560fc57`  
		Last Modified: Wed, 30 Sep 2026 21:14:00 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.3` - unknown; unknown

```console
$ docker pull kibana@sha256:2510ebf75b1d94dcc668371d5c1222dee9dc45ee49858c7b2fba03bc83970bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6141080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e42ce64932ba6e365d0cc680c944af00228140e341da5c69ba372549169bd920`

```dockerfile
```

-	Layers:
	-	`sha256:e334b38766a1a2cef228b3795ebacaf73f2e4a163e2d0b87847129419db5ea70`  
		Last Modified: Wed, 30 Sep 2026 21:13:56 GMT  
		Size: 6.1 MB (6097854 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07065caef4632a79376929141f0a7f1f65f3124ee1a0e24146d447f786771764`  
		Last Modified: Wed, 30 Sep 2026 21:13:55 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.3` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:ed16693a340135bc9d5d33a70e9776e3f504322bbef1e53fc5cb2f31ebfa6a56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **572.3 MB (572326169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce163aed4d0893e27621fba602063cd0223abee8258b62d97a379ec6e6aa637e`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 07:45:10 GMT
ENV container oci
# Wed, 30 Sep 2026 07:45:10 GMT
COPY dir:06d90a0b7db8992c03ff9664b8cd3e00c58fd39e054579d5795d410389dd5e96 in /      
# Wed, 30 Sep 2026 07:45:10 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:45:10 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:45:10 GMT
COPY dir:c0678317d7ed63442d60483211d5a1c6d09172186a4f2982932461d0f7e083bf in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:45:11 GMT
COPY dir:c0678317d7ed63442d60483211d5a1c6d09172186a4f2982932461d0f7e083bf in /root/buildinfo/      
# Wed, 30 Sep 2026 07:45:11 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:44:47Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T07:44:47Z" "architecture"="aarch64" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T07:44:47Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:03:31 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 30 Sep 2026 21:03:31 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:10:13 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 30 Sep 2026 21:10:14 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 30 Sep 2026 21:10:14 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 30 Sep 2026 21:10:14 GMT
RUN fc-cache -v # buildkit
# Wed, 30 Sep 2026 21:10:14 GMT
WORKDIR /usr/share/kibana
# Wed, 30 Sep 2026 21:10:14 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 30 Sep 2026 21:10:14 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 30 Sep 2026 21:10:14 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:10:14 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 30 Sep 2026 21:10:14 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 21:10:15 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 30 Sep 2026 21:10:16 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 30 Sep 2026 21:10:16 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 30 Sep 2026 21:10:16 GMT
LABEL org.label-schema.build-date=2026-09-01T14:33:18.580Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=2169f1de4c917fce03905cc3110f3f523e2184d2 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T14:33:18.580Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=2169f1de4c917fce03905cc3110f3f523e2184d2 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Wed, 30 Sep 2026 21:10:16 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 30 Sep 2026 21:10:16 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 30 Sep 2026 21:10:16 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 30 Sep 2026 21:10:16 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 30 Sep 2026 21:10:16 GMT
USER 1000
```

-	Layers:
	-	`sha256:b8f4af811c7c98a1b33bf1a9f90c3e1b1f2296b681895a0031b0560a5db8a0a4`  
		Last Modified: Wed, 30 Sep 2026 08:42:32 GMT  
		Size: 38.8 MB (38801364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbcbcc0f8407c57b42766af54511e17d42c7bfc38f89e79a861caedb8649936f`  
		Last Modified: Wed, 30 Sep 2026 21:11:36 GMT  
		Size: 19.3 MB (19257221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab067f5e4a3eacc0ae9069f6144d7c8bc4078f541450dcd1af3aaee7245bcf2`  
		Last Modified: Wed, 30 Sep 2026 21:11:44 GMT  
		Size: 497.7 MB (497710629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d40026c32fc0c637bfa5cdb2421978bcdf7c29320b2a079de8a0343d0c520e`  
		Last Modified: Wed, 30 Sep 2026 21:11:35 GMT  
		Size: 9.1 KB (9098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de32e1ff1bb238adf3859152236102802074d7ecc12c64251ecab8947caa380`  
		Last Modified: Wed, 30 Sep 2026 21:11:36 GMT  
		Size: 16.5 MB (16460475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2286473eeafc47eb3528a17fa2e25d22131080e305a751dbfb8d3de663a3cd`  
		Last Modified: Wed, 30 Sep 2026 21:11:37 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c5cf343718181313622b28ea569fcc3da09dabf7ad7fc316db78c4b16dbc29d`  
		Last Modified: Wed, 30 Sep 2026 21:11:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baf35228653aba15304e02f5c817afe07c22edb8315a32768af8fc1d84c57281`  
		Last Modified: Wed, 30 Sep 2026 21:11:38 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ca32c88eb8c94f75f13fe267416e62918891db41efc406e129d549911c2315`  
		Last Modified: Wed, 30 Sep 2026 21:11:38 GMT  
		Size: 5.0 KB (5001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9613f59ed332946dd16a9c93238ec937d1fd3999d86725c7476d54d5211f3ce`  
		Last Modified: Wed, 30 Sep 2026 21:11:39 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649ab3d2c57ee7d30ff84a292b9b22db11c1df0c0e8193ec3b7517a98270bde0`  
		Last Modified: Wed, 30 Sep 2026 21:11:39 GMT  
		Size: 73.5 KB (73451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004557cba90d742b15f1bc711051c2eebfd234dce9f628114edddefd32b6cba3`  
		Last Modified: Wed, 30 Sep 2026 21:11:39 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0539258cfdd58731b5614a27aeab396bde0f1b1a766e7ea29a02aa89c8d21559`  
		Last Modified: Wed, 30 Sep 2026 21:11:40 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.3` - unknown; unknown

```console
$ docker pull kibana@sha256:77446f430437330bb3292306a34222fbbf1ed9273ee0e925115d3e5d0e7c4cbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6138227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35af6f890c319847932e21df339992edb01f8258374994655d7dc31f2f1a5cf0`

```dockerfile
```

-	Layers:
	-	`sha256:e753688c81ce40d68840d07b9c0e64be3d93d79150aeb1d455f470eb53fcb478`  
		Last Modified: Wed, 30 Sep 2026 21:11:36 GMT  
		Size: 6.1 MB (6094744 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a76d197b38f5cb437c856e8c077fa3dd863872a8e51a8b226688bacd0013f76`  
		Last Modified: Wed, 30 Sep 2026 21:11:35 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
