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
$ docker pull kibana@sha256:e067a690ae339009c766255beb9967475046d48496c54e4209b9734d2ddcb785
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.6` - linux; amd64

```console
$ docker pull kibana@sha256:190d140477d2d5b164550e0b1658b3a560168d78ed007f8caaac10597b7bf9d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **565.8 MB (565841685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b683827d1c48c27c22bb1f9b8e0b4f7780f88c699a787673f589386f6583309`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:53:59 GMT
ENV container oci
# Tue, 22 Sep 2026 10:53:59 GMT
COPY dir:14bfe291e51cfd3471e9b85d5e9d491fe06b3ecf4d74ad9ed060eeed665412ea in /      
# Tue, 22 Sep 2026 10:54:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:54:00 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:54:00 GMT
COPY dir:275fafe01e910923b4cfa2c2282c3eb2ea9158af5a6dc42bc6197cbdbe3c4f3f in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:54:00 GMT
COPY dir:275fafe01e910923b4cfa2c2282c3eb2ea9158af5a6dc42bc6197cbdbe3c4f3f in /root/buildinfo/      
# Tue, 22 Sep 2026 10:54:00 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:53:29Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:53:29Z" "architecture"="x86_64" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:53:29Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:49:10 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 22 Sep 2026 18:49:10 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:59:39 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 22 Sep 2026 18:59:40 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 22 Sep 2026 18:59:40 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 22 Sep 2026 18:59:40 GMT
RUN fc-cache -v # buildkit
# Tue, 22 Sep 2026 18:59:40 GMT
WORKDIR /usr/share/kibana
# Tue, 22 Sep 2026 18:59:40 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 22 Sep 2026 18:59:40 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 22 Sep 2026 18:59:40 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:59:40 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 22 Sep 2026 18:59:40 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 22 Sep 2026 18:59:41 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 22 Sep 2026 18:59:42 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 22 Sep 2026 18:59:42 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 22 Sep 2026 18:59:42 GMT
LABEL org.label-schema.build-date=2026-08-26T20:30:47.515Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=692551ad493ed71169e295e2160446428ee00b15 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T20:30:47.515Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=692551ad493ed71169e295e2160446428ee00b15 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Tue, 22 Sep 2026 18:59:42 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 22 Sep 2026 18:59:42 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 22 Sep 2026 18:59:42 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 22 Sep 2026 18:59:42 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 22 Sep 2026 18:59:42 GMT
USER 1000
```

-	Layers:
	-	`sha256:f54a0fb19efce07c95685474b80ea80c4eb2ed40ae83a65e0624d0d8543a9b7f`  
		Last Modified: Tue, 22 Sep 2026 11:51:29 GMT  
		Size: 40.7 MB (40734776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf2c5d367e4dd7680f04b5a8f3f264e87e055528ad366e6d1823ded5c3c97f3`  
		Last Modified: Tue, 22 Sep 2026 19:01:02 GMT  
		Size: 19.3 MB (19314171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42829e3d147fb03ce6df9faf845bd47e20a452a112f17501a03281e157d0644a`  
		Last Modified: Tue, 22 Sep 2026 19:01:12 GMT  
		Size: 489.2 MB (489234315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a2e822e84321f58499be20f3d23484e9f6957380b9b543e374ee0e185f1094`  
		Last Modified: Tue, 22 Sep 2026 19:01:00 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bde5b346add520ac4a51a82ecff9a2c045b9be8ec3ff8c70c835e76c1da5723`  
		Last Modified: Tue, 22 Sep 2026 19:01:02 GMT  
		Size: 16.5 MB (16460483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44aec9823ecbde971b5f2922a90d50ad10c95bf28658c529eff3197a56100ef`  
		Last Modified: Tue, 22 Sep 2026 19:01:02 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab906d2f92df8f7bacdd74d6cf9123ed2b99799ef46c5e018c555d7fe2707f04`  
		Last Modified: Tue, 22 Sep 2026 19:01:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:838feb05555ea24c537953e6bdf146f97fec81a122a780473b2d600b3f128e43`  
		Last Modified: Tue, 22 Sep 2026 19:01:04 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acdf774d7b7155568f0e7e388ab2d52e1afce89df1e35ae25b88ed7a25ff7bd1`  
		Last Modified: Tue, 22 Sep 2026 19:01:04 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d088db6be27c68d60eddfab39fd1a917dfe3d158b8955595cae86fbba285a37`  
		Last Modified: Tue, 22 Sep 2026 19:01:05 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df45dfe0b9dba5280e3d2e198cf4bd9b2d91e532e9882ee6fcfc0eaceeba20b`  
		Last Modified: Tue, 22 Sep 2026 19:01:05 GMT  
		Size: 74.5 KB (74548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9ae61530ce99ad24f95e51cbc2e53a36b8c174bfb9707030540a15ee3e0a44c`  
		Last Modified: Tue, 22 Sep 2026 19:01:06 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:013bea25a17c9eb485350e368da016f23cd73f98ee883065bebd9a9c441c71cb`  
		Last Modified: Tue, 22 Sep 2026 19:01:06 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.6` - unknown; unknown

```console
$ docker pull kibana@sha256:99e992c341d77da768c30f0c7b9c3300a466fd7a65f487e8bf862f4474fe7884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5949496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1163931836c6609f87378c08a57061d905edcab9707a98a3c2630726906a8d3`

```dockerfile
```

-	Layers:
	-	`sha256:a31f627a904fd3ba3b3475b00a65ddfa36430ccdcbf4414d6aea4444219d6c81`  
		Last Modified: Tue, 22 Sep 2026 19:01:01 GMT  
		Size: 5.9 MB (5906270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3b5b4d7119ad0a7391ecd98b2a64299015b70a1dfdbd08a712be9f34e6c13e7`  
		Last Modified: Tue, 22 Sep 2026 19:01:01 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.6` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:b70c0d07163aa499c8eb92c6072c0443c451241070e3bffc87b36944c53c7011
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **577.3 MB (577337476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:357c15557bdac380088ee3b0a7afd31aed89784d2fbb33896a68c2f4c383faef`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:55:37 GMT
ENV container oci
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:f1b1d9f069c6fd519132b1abb0a3eadbb548b4c2598519d645212ad8182e3e90 in /      
# Tue, 22 Sep 2026 10:55:38 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:55:38 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:c81da2b95a2a50c27755e5eab58aad0ebdab4cbd008448bc8fccefc055d96de2 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:c81da2b95a2a50c27755e5eab58aad0ebdab4cbd008448bc8fccefc055d96de2 in /root/buildinfo/      
# Tue, 22 Sep 2026 10:55:39 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:55:15Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:55:15Z" "architecture"="aarch64" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:55:15Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:49:29 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 22 Sep 2026 18:49:29 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:57:51 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 22 Sep 2026 18:57:52 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 22 Sep 2026 18:57:52 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 22 Sep 2026 18:57:52 GMT
RUN fc-cache -v # buildkit
# Tue, 22 Sep 2026 18:57:52 GMT
WORKDIR /usr/share/kibana
# Tue, 22 Sep 2026 18:57:53 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 22 Sep 2026 18:57:53 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 22 Sep 2026 18:57:53 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:57:53 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 22 Sep 2026 18:57:53 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 22 Sep 2026 18:57:54 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 22 Sep 2026 18:57:55 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 22 Sep 2026 18:57:55 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 22 Sep 2026 18:57:55 GMT
LABEL org.label-schema.build-date=2026-08-26T20:30:47.515Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=692551ad493ed71169e295e2160446428ee00b15 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T20:30:47.515Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=692551ad493ed71169e295e2160446428ee00b15 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Tue, 22 Sep 2026 18:57:55 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 22 Sep 2026 18:57:55 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 22 Sep 2026 18:57:55 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 22 Sep 2026 18:57:55 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 22 Sep 2026 18:57:55 GMT
USER 1000
```

-	Layers:
	-	`sha256:dea0c826e8cdc58b1ff5a08680eb69ae64129bfee1b07b773c9c5e1d9ffb1e86`  
		Last Modified: Tue, 22 Sep 2026 11:49:08 GMT  
		Size: 38.8 MB (38803467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fff8aea1c3c5cfae96dede81b2c1cba60fc5fe8cd9f8334dfcbddf6dd6f79d`  
		Last Modified: Tue, 22 Sep 2026 18:59:21 GMT  
		Size: 19.3 MB (19254530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7106a74309d28a71f6a8884cb8406344c7f5495dd4b521ce674c7be714539b8`  
		Last Modified: Tue, 22 Sep 2026 18:59:30 GMT  
		Size: 502.7 MB (502722576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:641d0cd2e61a7d634c618782538b19862a9c185ecc1927dcf3a29e7f2b8efc20`  
		Last Modified: Tue, 22 Sep 2026 18:59:19 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eeb0c6c26fd103a1c0adfac6b64eb0861d2eeec7a3fffccbd9d4c5faff5b8bd`  
		Last Modified: Tue, 22 Sep 2026 18:59:20 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3c252060c46bfd896cec04379cb4563bf574a7d41ee05d5d8e1ba6007e1512`  
		Last Modified: Tue, 22 Sep 2026 18:59:20 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdab6532c4f6710f7979ace2f34ca86083ecb4b5f0166c932ce76119228998fa`  
		Last Modified: Tue, 22 Sep 2026 18:59:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd07c8cc6013afda8e2b417d91ec753bf3175e31bd6baa597aa8672bd081fa8`  
		Last Modified: Tue, 22 Sep 2026 18:59:22 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97abfed003070705e6c0ab0b55e66e52a7822917c4163130918cc25e393ad0db`  
		Last Modified: Tue, 22 Sep 2026 18:59:22 GMT  
		Size: 4.9 KB (4926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8214ecca28d5ee81af0eddc2c84bc4fb2f25b46eeb4d5212db696cd28e436279`  
		Last Modified: Tue, 22 Sep 2026 18:59:23 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b649bf7e8acda5ae33d8ad501e5b3c559207f696f04316d48a7efaa19aaa23`  
		Last Modified: Tue, 22 Sep 2026 18:59:23 GMT  
		Size: 73.5 KB (73454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:802ee75f23b9f505357df2c497bd6d920d83e703559d108f0ad1da0e7eb5e24b`  
		Last Modified: Tue, 22 Sep 2026 18:59:23 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c7628a91a21c232e0ce60e8df113915e2d745afd22cd849ae7d5b8302162424`  
		Last Modified: Tue, 22 Sep 2026 18:59:24 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.6` - unknown; unknown

```console
$ docker pull kibana@sha256:54cdf4ab755e10620e399e8cf90986b48d349fae4e8f09f9959e340851170faf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5946643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf277cdb664f889687b9a450b5a4960c798322410b30c836f8de3203747fd184`

```dockerfile
```

-	Layers:
	-	`sha256:8a19943f230959a6672275c3e93bbb9ae0b38fb16c2b00c841642ccff08c2730`  
		Last Modified: Tue, 22 Sep 2026 18:59:20 GMT  
		Size: 5.9 MB (5903160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44ef14d52317f47e6ea734270edba30a9d42cb1630cdf676a92dc713407364c7`  
		Last Modified: Tue, 22 Sep 2026 18:59:19 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.3`

```console
$ docker pull kibana@sha256:6b7a4807cc9546c2c538d85e080a159b33984a7ef9556c0ca11f3c7397ab1bbf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.3` - linux; amd64

```console
$ docker pull kibana@sha256:59ac8349135eccec39271f68e9b0707c4487cd15fe8f127883b8e6351295df7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **560.8 MB (560846956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc4df8c9c64e30e93605a6167497fd90405ca1f6061b5238720f1165ffb54696`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:53:59 GMT
ENV container oci
# Tue, 22 Sep 2026 10:53:59 GMT
COPY dir:14bfe291e51cfd3471e9b85d5e9d491fe06b3ecf4d74ad9ed060eeed665412ea in /      
# Tue, 22 Sep 2026 10:54:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:54:00 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:54:00 GMT
COPY dir:275fafe01e910923b4cfa2c2282c3eb2ea9158af5a6dc42bc6197cbdbe3c4f3f in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:54:00 GMT
COPY dir:275fafe01e910923b4cfa2c2282c3eb2ea9158af5a6dc42bc6197cbdbe3c4f3f in /root/buildinfo/      
# Tue, 22 Sep 2026 10:54:00 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:53:29Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:53:29Z" "architecture"="x86_64" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:53:29Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:49:37 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 22 Sep 2026 18:49:37 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:57:47 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 22 Sep 2026 18:57:48 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 22 Sep 2026 18:57:48 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 22 Sep 2026 18:57:48 GMT
RUN fc-cache -v # buildkit
# Tue, 22 Sep 2026 18:57:48 GMT
WORKDIR /usr/share/kibana
# Tue, 22 Sep 2026 18:57:48 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 22 Sep 2026 18:57:48 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 22 Sep 2026 18:57:48 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:57:48 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 22 Sep 2026 18:57:48 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 22 Sep 2026 18:57:49 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 22 Sep 2026 18:57:50 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 22 Sep 2026 18:57:50 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 22 Sep 2026 18:57:50 GMT
LABEL org.label-schema.build-date=2026-09-01T14:33:18.580Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=2169f1de4c917fce03905cc3110f3f523e2184d2 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T14:33:18.580Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=2169f1de4c917fce03905cc3110f3f523e2184d2 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Tue, 22 Sep 2026 18:57:50 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 22 Sep 2026 18:57:50 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 22 Sep 2026 18:57:50 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 22 Sep 2026 18:57:50 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 22 Sep 2026 18:57:50 GMT
USER 1000
```

-	Layers:
	-	`sha256:f54a0fb19efce07c95685474b80ea80c4eb2ed40ae83a65e0624d0d8543a9b7f`  
		Last Modified: Tue, 22 Sep 2026 11:51:29 GMT  
		Size: 40.7 MB (40734776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a41f526d3b5f57c06917a22715b487046661a633c86ca180f2819e01855c3d`  
		Last Modified: Tue, 22 Sep 2026 18:59:00 GMT  
		Size: 19.3 MB (19314148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7923528571d3ef57ee5e1626f1c2d2b6909bd64ee60d941a3c83461aa7a8d3`  
		Last Modified: Tue, 22 Sep 2026 18:59:15 GMT  
		Size: 484.2 MB (484239546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b456323b6c741564f39163b7b28fe8dbf1e21c10a908906f2ade8c8f60b9e7e5`  
		Last Modified: Tue, 22 Sep 2026 18:58:59 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e1f31c17edb1c1040f5718e6ce98143ebfbc7be71f4a1142a466d8f2f059568`  
		Last Modified: Tue, 22 Sep 2026 18:59:00 GMT  
		Size: 16.5 MB (16460478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca5242e10f8379de1d8f207dadd970361e473ea6d6738b956b7ef1142a4dd1ae`  
		Last Modified: Tue, 22 Sep 2026 18:59:00 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9bd9ef8d94e4cb30ef88360805f5461c16390d291191da3543989e10a808688`  
		Last Modified: Tue, 22 Sep 2026 18:59:02 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23abe5ae68c206ec42858920c0e3608529afb7d659b73d627853ae6765782f9b`  
		Last Modified: Tue, 22 Sep 2026 18:59:02 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffbb7519e93eff64342eba2702c59702808aafe257b625a223737b0cf2a25bdc`  
		Last Modified: Tue, 22 Sep 2026 18:59:02 GMT  
		Size: 5.0 KB (4998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903696ea97a962276740d939476b5a72ebe5ae8ef5a4960f22cb71dd98828dd6`  
		Last Modified: Tue, 22 Sep 2026 18:59:03 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc4520b09eb6d56849830b8b56833100d44c86cf72684bb6a0ee4c4e875ed02`  
		Last Modified: Tue, 22 Sep 2026 18:59:04 GMT  
		Size: 74.5 KB (74547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9e803051489b1396a2c871f1e2f6d326daaac8eb9b192a8f8d90fe43565a7b`  
		Last Modified: Tue, 22 Sep 2026 18:59:04 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6146f6e97a5a1a25985772bf92963e4f1e5b32f324198eff677e18035ebc63`  
		Last Modified: Tue, 22 Sep 2026 18:59:05 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.3` - unknown; unknown

```console
$ docker pull kibana@sha256:2f5d6a1c45f9e62668ceb02852f5ffede8149bcb85858b9b11b20402180fd72d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6141071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1ed4779691fa8fbbc9bd929313dd82938e2f7e013b1659c594541aa080fd15`

```dockerfile
```

-	Layers:
	-	`sha256:a7e442fb712d2f99d569ae81b92cfc0be5a6f20c8bdd982bdcd354c298056ddc`  
		Last Modified: Tue, 22 Sep 2026 18:58:59 GMT  
		Size: 6.1 MB (6097846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:104284b89afe818c049465e99b8997f08954372e836248506ef610a11dee3edd`  
		Last Modified: Tue, 22 Sep 2026 18:58:59 GMT  
		Size: 43.2 KB (43225 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.3` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:ba4ff779faf38a768c181d4b87ac870a55b8c186d53cf9d4d09b078d91b11b87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **572.3 MB (572327419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:332bdae5761cf70bb2ed0968e469d2abfa11b07d92df575d66d5530974460720`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:55:37 GMT
ENV container oci
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:f1b1d9f069c6fd519132b1abb0a3eadbb548b4c2598519d645212ad8182e3e90 in /      
# Tue, 22 Sep 2026 10:55:38 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:55:38 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:c81da2b95a2a50c27755e5eab58aad0ebdab4cbd008448bc8fccefc055d96de2 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:c81da2b95a2a50c27755e5eab58aad0ebdab4cbd008448bc8fccefc055d96de2 in /root/buildinfo/      
# Tue, 22 Sep 2026 10:55:39 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:55:15Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:55:15Z" "architecture"="aarch64" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:55:15Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:49:31 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 22 Sep 2026 18:49:31 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:56:16 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 22 Sep 2026 18:56:17 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 22 Sep 2026 18:56:17 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 22 Sep 2026 18:56:17 GMT
RUN fc-cache -v # buildkit
# Tue, 22 Sep 2026 18:56:17 GMT
WORKDIR /usr/share/kibana
# Tue, 22 Sep 2026 18:56:17 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 22 Sep 2026 18:56:17 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 22 Sep 2026 18:56:17 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:56:17 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 22 Sep 2026 18:56:17 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 22 Sep 2026 18:56:18 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 22 Sep 2026 18:56:19 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 22 Sep 2026 18:56:19 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 22 Sep 2026 18:56:19 GMT
LABEL org.label-schema.build-date=2026-09-01T14:33:18.580Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=2169f1de4c917fce03905cc3110f3f523e2184d2 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T14:33:18.580Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=2169f1de4c917fce03905cc3110f3f523e2184d2 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Tue, 22 Sep 2026 18:56:19 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 22 Sep 2026 18:56:19 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 22 Sep 2026 18:56:19 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 22 Sep 2026 18:56:19 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 22 Sep 2026 18:56:19 GMT
USER 1000
```

-	Layers:
	-	`sha256:dea0c826e8cdc58b1ff5a08680eb69ae64129bfee1b07b773c9c5e1d9ffb1e86`  
		Last Modified: Tue, 22 Sep 2026 11:49:08 GMT  
		Size: 38.8 MB (38803467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fe7b52f5b9f400e77ea7d827c98382f3fa4f3ee091c97cd872e7f1f57f71045`  
		Last Modified: Tue, 22 Sep 2026 18:57:43 GMT  
		Size: 19.3 MB (19254358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a93656a6bd13855e06caa104878db836bb0441efc037a572642dafc4ae6178f9`  
		Last Modified: Tue, 22 Sep 2026 18:57:51 GMT  
		Size: 497.7 MB (497712614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64f23add45d8aaf4ace9e31700332632b58bcb780d82fc0f3cf1f6fa75140c1d`  
		Last Modified: Tue, 22 Sep 2026 18:57:41 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b092aa4dc5da1bb5de5afbea5db560940351b01c3045e886b6e4f0a35cb10428`  
		Last Modified: Tue, 22 Sep 2026 18:57:42 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57280d3f223ed6f25b43ab931ef4abcfdff5df057519f0270a67659273910876`  
		Last Modified: Tue, 22 Sep 2026 18:57:43 GMT  
		Size: 5.2 KB (5219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ba16b35d235abf644318d89108bec2e1be09725982c9e1e5fb77c8f4ebdba0`  
		Last Modified: Tue, 22 Sep 2026 18:57:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98ce28a673995f5ac9d834f138cb17cf8829f84b09266a9ef2072d5fae495aa7`  
		Last Modified: Tue, 22 Sep 2026 18:57:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f722acc2f9a9ef03ec851794d8f08b990033bb63bae4d902b3acb46fc2c5da46`  
		Last Modified: Tue, 22 Sep 2026 18:57:44 GMT  
		Size: 5.0 KB (5003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01addf8553f3d91095f02931ed1732f0fecd800596125bac6c162322b5bacb2f`  
		Last Modified: Tue, 22 Sep 2026 18:57:45 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f51e50c013ecd32fd848a5cf2ec7e7e07a7b9cb11c1cff8a262c7464d03b86`  
		Last Modified: Tue, 22 Sep 2026 18:57:45 GMT  
		Size: 73.5 KB (73452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c132d1757ea202644bac1ae1c4e740701267775e6ea6d67376e5b021ba92b35d`  
		Last Modified: Tue, 22 Sep 2026 18:57:45 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1629274530d339e3ba1b35c3ac9a850ac148c798fc6cd455ed3b5ddf8d1df765`  
		Last Modified: Tue, 22 Sep 2026 18:57:46 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.3` - unknown; unknown

```console
$ docker pull kibana@sha256:a1e6f3d64cf0437d44f70992b40e344d8a797e2ccb46da73ad95e8e089c6a67c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6138218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f18a644b3b7fd3ad65c331f46f85451e8128ebcf2f8b36768445221204da5cbe`

```dockerfile
```

-	Layers:
	-	`sha256:73bedd4a7217ebdccaf35bf21d1b0499ac7fa928a143abcb4f74e1fa4ef84687`  
		Last Modified: Tue, 22 Sep 2026 18:57:42 GMT  
		Size: 6.1 MB (6094736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9228e2899bd03605aa413f22219d1f45b69e43ee480adc4abf9c7401bd76dbb3`  
		Last Modified: Tue, 22 Sep 2026 18:57:41 GMT  
		Size: 43.5 KB (43482 bytes)  
		MIME: application/vnd.in-toto+json
