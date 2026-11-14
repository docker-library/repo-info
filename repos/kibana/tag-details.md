<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.25`](#kibana81925)
-	[`kibana:9.4.8`](#kibana948)
-	[`kibana:9.5.5`](#kibana955)

## `kibana:8.19.25`

```console
$ docker pull kibana@sha256:1ea7dd43dbd5d41a5dcaffcddf611ffd0bd75e2c71b63d9adf1081ecb621a18f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:8.19.25` - linux; amd64

```console
$ docker pull kibana@sha256:87b09d9e59e12c6e31d9c75b4a6e6d47171d33c4b057233578b0ae4df5903d33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.8 MB (454762122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e122cd7e48ca5eb757aa62261a5277487cd4b5b90ddb4f4b0083a12dc4073dc5`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:29:29 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 11 Nov 2026 23:29:29 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:29 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 11 Nov 2026 23:37:30 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 11 Nov 2026 23:37:30 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 11 Nov 2026 23:37:30 GMT
RUN fc-cache -v # buildkit
# Wed, 11 Nov 2026 23:37:30 GMT
WORKDIR /usr/share/kibana
# Wed, 11 Nov 2026 23:37:30 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 11 Nov 2026 23:37:30 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 11 Nov 2026 23:37:30 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:37:30 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 11 Nov 2026 23:37:30 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:37:31 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 11 Nov 2026 23:37:32 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 11 Nov 2026 23:37:32 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 11 Nov 2026 23:37:32 GMT
LABEL org.label-schema.build-date=2026-11-05T11:06:44.382Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=3544eac4694b201b2dfb2ece54b8d28c08389679 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.25 org.opencontainers.image.created=2026-11-05T11:06:44.382Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=3544eac4694b201b2dfb2ece54b8d28c08389679 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.25
# Wed, 11 Nov 2026 23:37:32 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 11 Nov 2026 23:37:32 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 11 Nov 2026 23:37:32 GMT
USER 1000
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea890d84001fadedc805d20772bb259071f72131b69aa936a946ba10dc8c81a4`  
		Last Modified: Wed, 11 Nov 2026 23:38:37 GMT  
		Size: 9.4 MB (9412028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b32eead2929cfdf0192a9c4fbcda7eefb19e0666a0ebeb0bf06af5d2791ceb59`  
		Last Modified: Wed, 11 Nov 2026 23:38:44 GMT  
		Size: 398.9 MB (398912881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2edcd87ba5eae4428df00203823b2f73fc90b10381625474ae0b9f9ab34a4ad4`  
		Last Modified: Wed, 11 Nov 2026 23:38:36 GMT  
		Size: 9.5 KB (9529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15e3c3dbda8108a25ec688a05e84d7f8ab633fafd5cd8be6cae38c61ea0e16e5`  
		Last Modified: Wed, 11 Nov 2026 23:38:37 GMT  
		Size: 16.5 MB (16460484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf94abe1d95818653c85e2b23ec4ac7e2ace8a2e3f7d6c4fb8a91adb28b844c`  
		Last Modified: Wed, 11 Nov 2026 23:38:38 GMT  
		Size: 5.2 KB (5239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a093c99ac1f2b93538f98057af64d83766092b5b109e4301d71d30e529fa87`  
		Last Modified: Wed, 11 Nov 2026 23:38:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ff58f7ae90307d75f9ea64f1b83ff1740384f14ef5b46e6e4d1800110d2e75`  
		Last Modified: Wed, 11 Nov 2026 23:38:39 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:965c9031f207730ff9957ddbf6c84a2fe8c21de7554ed3b302cbb864d963e2c3`  
		Last Modified: Wed, 11 Nov 2026 23:38:39 GMT  
		Size: 4.8 KB (4822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4823f85c02d56fa717ab5d6f2aac90f2b25cefdc52fe1d9ec6c36a021d263e4d`  
		Last Modified: Wed, 11 Nov 2026 23:38:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6229e0fa72ba967ec68f3d4ed172b4e7d8e07f145d5c25ea9b8dbe5186b5208b`  
		Last Modified: Wed, 11 Nov 2026 23:38:40 GMT  
		Size: 161.7 KB (161739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ba84df939b4f47d8452606887125effe3e88686d989dca6a72aaee0e05fd52`  
		Last Modified: Wed, 11 Nov 2026 23:38:40 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.25` - unknown; unknown

```console
$ docker pull kibana@sha256:d5b906a19bce8b9ad10ee8944ea7a41843a658f5a9173988bb0200c21501046d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4760845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:103266fd4c84bfa3d27858115794d4ce41f8b63b9efef3beff6e2f60f6f716fc`

```dockerfile
```

-	Layers:
	-	`sha256:b56395c553dc09ef9295e36cc3653752b5ada4de9ee4fa32e0178f5f96625e1a`  
		Last Modified: Wed, 11 Nov 2026 23:38:37 GMT  
		Size: 4.7 MB (4719930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5edbb730ce5e71997679accbc118051a4cf7b15896bba38bc68c38c7067624b3`  
		Last Modified: Wed, 11 Nov 2026 23:38:36 GMT  
		Size: 40.9 KB (40915 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:8.19.25` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:b24586d15a09880a35629f61c78a759e62bfaf796ea33240a56bcbeba190bfc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.9 MB (466899795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b011c06200d37bc19077caecad9d62a3dffdfa328e58510877d2fd161658d14`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:32:36 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 11 Nov 2026 23:32:36 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:21 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
RUN fc-cache -v # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
WORKDIR /usr/share/kibana
# Wed, 11 Nov 2026 23:39:22 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 11 Nov 2026 23:39:22 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:39:22 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 11 Nov 2026 23:39:22 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:39:23 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 11 Nov 2026 23:39:24 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 11 Nov 2026 23:39:24 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 11 Nov 2026 23:39:24 GMT
LABEL org.label-schema.build-date=2026-11-05T11:06:44.382Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=3544eac4694b201b2dfb2ece54b8d28c08389679 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.25 org.opencontainers.image.created=2026-11-05T11:06:44.382Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=3544eac4694b201b2dfb2ece54b8d28c08389679 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.25
# Wed, 11 Nov 2026 23:39:24 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 11 Nov 2026 23:39:24 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 11 Nov 2026 23:39:24 GMT
USER 1000
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12f904ebb547bbba677e8ab185357cc7a8a62eda0a7aca31618bbaddc2176c00`  
		Last Modified: Wed, 11 Nov 2026 23:40:32 GMT  
		Size: 9.4 MB (9438323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefe06a01ea638f624f7eed134df6a73f3713fff79b7edf1cb2eb1e47f9d7d41`  
		Last Modified: Wed, 11 Nov 2026 23:40:41 GMT  
		Size: 411.9 MB (411856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:653eb741aaa8e2ab20bcdfa8801d92a543c0d97243db78b21ed96bb223fd4d11`  
		Last Modified: Wed, 11 Nov 2026 23:40:31 GMT  
		Size: 9.1 KB (9096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434101c20cc351c5a846edeeed5c63412b9cb1472ec4832f45ad6357e7124662`  
		Last Modified: Wed, 11 Nov 2026 23:40:33 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8010766879384a6cae661a5c3b1b6b6c2729391de03aff6ed4b24a2c2c00a97a`  
		Last Modified: Wed, 11 Nov 2026 23:40:33 GMT  
		Size: 5.2 KB (5242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:891f5bc54bdba5dbe10746e34aa415bbdb9c3f6bb3036d176e0f817e7a82a73b`  
		Last Modified: Wed, 11 Nov 2026 23:40:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e3cf5beee50581e817ee03495d46c02a21e88261b9e8fbac42bca44b8795a24`  
		Last Modified: Wed, 11 Nov 2026 23:40:34 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7a9109e76a5f6bf19238ba3cb400b1d0a2bc304ac02487fc66f2458944c939`  
		Last Modified: Wed, 11 Nov 2026 23:40:34 GMT  
		Size: 4.8 KB (4822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fbc17541a3637cf8279f3b23c38c517fc10fee80caca61fde3dc708f3b6672`  
		Last Modified: Wed, 11 Nov 2026 23:40:35 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b4d692325b1342ea031914682d08c9a9a626229395947d58d373cae50c959d8`  
		Last Modified: Wed, 11 Nov 2026 23:40:35 GMT  
		Size: 158.3 KB (158253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abcdf61798e7d24e0a06ea67a8d32c48236b9dc99fa258caea6de7b53648b156`  
		Last Modified: Wed, 11 Nov 2026 23:40:35 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.25` - unknown; unknown

```console
$ docker pull kibana@sha256:2b6d7f94848d9863e288c6f6d3c9457c033aa914a2a0aaa24a959d8be95e7291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4762157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4164a765b2fa9dd0694eb3fe8015e12ca6a1a3052f1aec4245dd230663cab70`

```dockerfile
```

-	Layers:
	-	`sha256:615ab3a36b1919da7c4f7bef075c282369c892553232dea2cb47b3388c061e47`  
		Last Modified: Wed, 11 Nov 2026 23:40:32 GMT  
		Size: 4.7 MB (4720994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61d42f5c983dee2e092df93c1fa2c534ee3cb8802cdb1d982e09f6a45af1e952`  
		Last Modified: Wed, 11 Nov 2026 23:40:31 GMT  
		Size: 41.2 KB (41163 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.8`

```console
$ docker pull kibana@sha256:e592a793cc32d7db9d1f2a67f3ab20fc4bd824f8cc63534fa9ad5b8175d7f1e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.8` - linux; amd64

```console
$ docker pull kibana@sha256:7db0d96586dde0f8c9715c7699663528c23f19a9a7b4ea3113cfd709746ef2aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.6 MB (545603330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe216a2b7841ee860700f367981860cb2441d32965eda2cdb6cb8510a28c3101`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:10:03 GMT
ENV container oci
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:4925913982ee23b93a5459c6c94a48de8c0673c106763b3fd70dc3eefa0ce90f in /      
# Thu, 12 Nov 2026 07:10:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:10:04 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:fd0ea76c9f943a84d285f5b85a5dba9debc1ef1ff54714702d4773c2412fac40 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:fd0ea76c9f943a84d285f5b85a5dba9debc1ef1ff54714702d4773c2412fac40 in /root/buildinfo/      
# Thu, 12 Nov 2026 07:10:05 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:09:34Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:09:34Z" "architecture"="x86_64" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:09:34Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:47:06 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 13 Nov 2026 21:47:06 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:56:30 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 13 Nov 2026 21:56:30 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 13 Nov 2026 21:56:30 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Fri, 13 Nov 2026 21:56:31 GMT
RUN fc-cache -v # buildkit
# Fri, 13 Nov 2026 21:56:31 GMT
WORKDIR /usr/share/kibana
# Fri, 13 Nov 2026 21:56:31 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 13 Nov 2026 21:56:31 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 13 Nov 2026 21:56:31 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:56:31 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 13 Nov 2026 21:56:31 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 21:56:32 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 13 Nov 2026 21:56:33 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 13 Nov 2026 21:56:33 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 13 Nov 2026 21:56:33 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Fri, 13 Nov 2026 21:56:33 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Fri, 13 Nov 2026 21:56:33 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 13 Nov 2026 21:56:33 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 13 Nov 2026 21:56:33 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 13 Nov 2026 21:56:33 GMT
USER 1000
```

-	Layers:
	-	`sha256:a910e564830ecfbbdd4d0f366b4c40043cd255993dfb8d713b53c0b186a7eaa4`  
		Last Modified: Thu, 12 Nov 2026 09:38:47 GMT  
		Size: 40.7 MB (40669413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e6d767074994be3dad3da6de0225bac492038c0b83e502533658b0e53a5ee9e`  
		Last Modified: Fri, 13 Nov 2026 21:57:46 GMT  
		Size: 19.3 MB (19308497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4b471273c37f21d0690b12749b35619ace53cbeacbc1663d202a2d079c2803`  
		Last Modified: Fri, 13 Nov 2026 21:57:55 GMT  
		Size: 469.1 MB (469067028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f93a7fdc551453b272c1260cf38da0955099b1afd2c1a329b22973352886bf36`  
		Last Modified: Fri, 13 Nov 2026 21:57:45 GMT  
		Size: 9.5 KB (9529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02708a9930f78e95c3cf12f8a77ccf1bd1a925e65a35b07b7f0c6d48b6ef94b2`  
		Last Modified: Fri, 13 Nov 2026 21:57:46 GMT  
		Size: 16.5 MB (16460484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da38a37aacf9d0fc4194a494b6aeaa0c2491561b99f79f6160dff7ac3b18ed45`  
		Last Modified: Fri, 13 Nov 2026 21:57:47 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbc0cce62fb29c2293d54c4de90c851a28af8a20e8ede2ec4403e35df61d454d`  
		Last Modified: Fri, 13 Nov 2026 21:57:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596a74191a068e70720acbd7ecc11ed6a6470806933b1337cc13a017263d1be2`  
		Last Modified: Fri, 13 Nov 2026 21:57:48 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0af28996a934f18d6b5e2043cda3b37172b74ef60b84abab9c28a02dc2f5571`  
		Last Modified: Fri, 13 Nov 2026 21:57:48 GMT  
		Size: 4.9 KB (4926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0cd46743dc27b93aff656d35d7d746b7ca8a4ab4ef7b0f519adc02c3dcd6d4`  
		Last Modified: Fri, 13 Nov 2026 21:57:49 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e795cd49ba80cfe3c94e833a804cdd0ec7ff191beeb7ca8a3334a76080c2d9b1`  
		Last Modified: Fri, 13 Nov 2026 21:57:49 GMT  
		Size: 74.5 KB (74523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09427011b5cc8bfb8a4b4943a18e8c5144ab95ebcf894dced1444d4ca48ac571`  
		Last Modified: Fri, 13 Nov 2026 21:57:49 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d21b0b4e8bd9e3a73f02f1b82d3e9203dae65d750b4ad1c2599bb62239362d7`  
		Last Modified: Fri, 13 Nov 2026 21:57:50 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:1f7169398c2e89edb493df5a1a9399798844c37358c532fbcd0072c2e6e684e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5901691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee54cb80bccdf2b0711084dc0ddfad914ae76cb325d13c39c4b87f9458428919`

```dockerfile
```

-	Layers:
	-	`sha256:b48d3a1e1593616ba352380d28740359d982fa49af4d369ccefa02f629805a51`  
		Last Modified: Fri, 13 Nov 2026 21:57:45 GMT  
		Size: 5.9 MB (5858465 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7208500d99f7b6e869d55230db15ba1f4e97d16356532e341c3708af57c1887e`  
		Last Modified: Fri, 13 Nov 2026 21:57:45 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:fbeead75aa713066b477096248c4e3d4506380d45da33103f2235f20b9e6e103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **557.0 MB (557014864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83512474a447a17cee7188605a0e9195d16322ce24d7ecb93342dfabd0736fb7`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:12:46 GMT
ENV container oci
# Thu, 12 Nov 2026 07:12:47 GMT
COPY dir:4d87526a7738e67f2849dec8cc7456d51f10cd8903f2b487983c9a8e8cf85454 in /      
# Thu, 12 Nov 2026 07:12:47 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:12:48 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:12:48 GMT
COPY dir:b8fefbe8743dd0d8522b33cd4fd83dde7d1f8d19d41b8dc58938df13462cf373 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:12:48 GMT
COPY dir:b8fefbe8743dd0d8522b33cd4fd83dde7d1f8d19d41b8dc58938df13462cf373 in /root/buildinfo/      
# Thu, 12 Nov 2026 07:12:49 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:12:16Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:12:16Z" "architecture"="aarch64" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:12:16Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:46:39 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 13 Nov 2026 21:46:39 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:54:15 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 13 Nov 2026 21:54:16 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 13 Nov 2026 21:54:16 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Fri, 13 Nov 2026 21:54:16 GMT
RUN fc-cache -v # buildkit
# Fri, 13 Nov 2026 21:54:16 GMT
WORKDIR /usr/share/kibana
# Fri, 13 Nov 2026 21:54:16 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 13 Nov 2026 21:54:16 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 13 Nov 2026 21:54:16 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:54:16 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 13 Nov 2026 21:54:16 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 21:54:17 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 13 Nov 2026 21:54:18 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 13 Nov 2026 21:54:19 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 13 Nov 2026 21:54:19 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Fri, 13 Nov 2026 21:54:19 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Fri, 13 Nov 2026 21:54:19 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 13 Nov 2026 21:54:19 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 13 Nov 2026 21:54:19 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 13 Nov 2026 21:54:19 GMT
USER 1000
```

-	Layers:
	-	`sha256:d3fe075a76b1285aa041b2e11e27b50e9193a929b1d8a84c06e18764d60bddbc`  
		Last Modified: Thu, 12 Nov 2026 09:56:13 GMT  
		Size: 38.7 MB (38679109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73fe464069e29de0863c11ff7ea4930dec84f49d3027543c84ab3ecfb7cf5d13`  
		Last Modified: Fri, 13 Nov 2026 21:55:41 GMT  
		Size: 19.3 MB (19250020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b0a576bd123675e2a71d594fe266b946cefd349c6c6ea2f0872a6cb93b64431`  
		Last Modified: Fri, 13 Nov 2026 21:55:49 GMT  
		Size: 482.5 MB (482528826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8587612be5fef5c177ee154a978799e8515e67025161a0e9a0f32b23e52bf3`  
		Last Modified: Fri, 13 Nov 2026 21:55:40 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999ed79afd8f514d56602082dc9b79322a6a520bf61573eb7e31594ef054ac40`  
		Last Modified: Fri, 13 Nov 2026 21:55:41 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582dbb2270239b2818695ca1b4ead7ebfba4670b49818c43ca4b31513c0f7abd`  
		Last Modified: Fri, 13 Nov 2026 21:55:41 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1abeadd11f86f916aa1742ccb15712d9db5b7cd64696628faa80fc2fbe9fe11a`  
		Last Modified: Fri, 13 Nov 2026 21:55:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b932769cfc83bb15dc815391d482298d0e75370aece8880a5539a8713cf2a6`  
		Last Modified: Fri, 13 Nov 2026 21:55:42 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b25b26f8589039f31cac87d405062a5954f8a88f3fe795315766a16f62cbee`  
		Last Modified: Fri, 13 Nov 2026 21:55:42 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da7e8d8136558a8293488493d208e2698adb9b782c6a3b6b9d937fdf7e353587`  
		Last Modified: Fri, 13 Nov 2026 21:55:43 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90295270bbf879c92186ab137be0cdea3bec24190ec989c2009133c4fa81ff85`  
		Last Modified: Fri, 13 Nov 2026 21:55:44 GMT  
		Size: 73.4 KB (73447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8449adcf393ce3a6024c6cfbfb8207c7d37ca4aef979636600735bd7b9ccd96`  
		Last Modified: Fri, 13 Nov 2026 21:55:44 GMT  
		Size: 1.1 KB (1054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf302b3356483ff3f76c37c80505b3771be0d7021975891d081f1c3d5113c9c`  
		Last Modified: Fri, 13 Nov 2026 21:55:45 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:b521370774b356707672a2b8aa20e64266904055fc90f1a1b4f4f0522f0829df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5898838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb7f21c4f9fa641d4650b6a0db299c0b5bd130842e3b81df7b71235b6eca815c`

```dockerfile
```

-	Layers:
	-	`sha256:5e22f9bee35490eb1ef34c4497f0fc7436b670c57b0c3d8e7022d8b19df21a3d`  
		Last Modified: Fri, 13 Nov 2026 21:55:40 GMT  
		Size: 5.9 MB (5855355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9a9f3a2381c65388a802ff38e8f4bec818c067bcbfde89a207e8680f0477967`  
		Last Modified: Fri, 13 Nov 2026 21:55:40 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.5`

```console
$ docker pull kibana@sha256:d76d74f655157baaae98a6a9a84bb81b11ad7db0025ceaf7e49e0b3388f3c374
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.5` - linux; amd64

```console
$ docker pull kibana@sha256:a45cc2462a471e889341e934e89ca4ba2461202aeca5ff6593a308034c839750
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.2 MB (537240242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbed23582930c50a8621b39d17a4a1dd561cbcb4d412e0aeb8993bbf2b3e5a97`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:10:03 GMT
ENV container oci
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:4925913982ee23b93a5459c6c94a48de8c0673c106763b3fd70dc3eefa0ce90f in /      
# Thu, 12 Nov 2026 07:10:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:10:04 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:fd0ea76c9f943a84d285f5b85a5dba9debc1ef1ff54714702d4773c2412fac40 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:fd0ea76c9f943a84d285f5b85a5dba9debc1ef1ff54714702d4773c2412fac40 in /root/buildinfo/      
# Thu, 12 Nov 2026 07:10:05 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:09:34Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:09:34Z" "architecture"="x86_64" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:09:34Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:47:14 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 13 Nov 2026 21:47:14 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:55:30 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 13 Nov 2026 21:55:30 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 13 Nov 2026 21:55:30 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Fri, 13 Nov 2026 21:55:31 GMT
RUN fc-cache -v # buildkit
# Fri, 13 Nov 2026 21:55:31 GMT
WORKDIR /usr/share/kibana
# Fri, 13 Nov 2026 21:55:31 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 13 Nov 2026 21:55:31 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 13 Nov 2026 21:55:31 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:55:31 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 13 Nov 2026 21:55:31 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 21:55:31 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 13 Nov 2026 21:55:32 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 13 Nov 2026 21:55:32 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 13 Nov 2026 21:55:32 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Fri, 13 Nov 2026 21:55:32 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Fri, 13 Nov 2026 21:55:32 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 13 Nov 2026 21:55:32 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 13 Nov 2026 21:55:32 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 13 Nov 2026 21:55:32 GMT
USER 1000
```

-	Layers:
	-	`sha256:a910e564830ecfbbdd4d0f366b4c40043cd255993dfb8d713b53c0b186a7eaa4`  
		Last Modified: Thu, 12 Nov 2026 09:38:47 GMT  
		Size: 40.7 MB (40669413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd7c97d6f5e70ac23f8b29894c3d5341661ce5b0d800b539223fbb399f1a32d`  
		Last Modified: Fri, 13 Nov 2026 21:56:46 GMT  
		Size: 19.3 MB (19308533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576e6ccdce8f95b1348d0f264a6f5ddb5733070ece9b419b6e8305b97128c742`  
		Last Modified: Fri, 13 Nov 2026 21:56:54 GMT  
		Size: 460.7 MB (460703822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5876b30a2de20cfa75acfc4a9e6c0bde3c6ae68162bd709618973dbf478b49`  
		Last Modified: Fri, 13 Nov 2026 21:56:45 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89ae2e26ed8793629c0aad1a4aad1ddecf38de49c335f562ca9e73c2a3fcc5de`  
		Last Modified: Fri, 13 Nov 2026 21:56:46 GMT  
		Size: 16.5 MB (16460486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c9ae55c540cd009b54bbb2b0625bdc816ed81572472a0fb2c4ccdafa78e5724`  
		Last Modified: Fri, 13 Nov 2026 21:56:46 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28925fe05353d9a762008b174c0b5228248ce1a0fe76cba1274303c10b2493da`  
		Last Modified: Fri, 13 Nov 2026 21:56:47 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7a925b92cb5c4b63dc4811d6680d78d518f787c9581b4033f27f71e22b32b31`  
		Last Modified: Fri, 13 Nov 2026 21:56:47 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ffe43aa17bd3b82c96af9797d673d35a33b38fe5c3626ef54aee47b077eab66`  
		Last Modified: Fri, 13 Nov 2026 21:56:47 GMT  
		Size: 5.0 KB (5000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39815950612c32916e845ef8d4d3259310053dbd8adf827cd2f364010932f34e`  
		Last Modified: Fri, 13 Nov 2026 21:56:48 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3263ea33e4e93f26f791bf5fe6a1e8fd06eaf14192ecbc7a5aa9ec5f3e9897cb`  
		Last Modified: Fri, 13 Nov 2026 21:56:49 GMT  
		Size: 74.5 KB (74523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37398e270e527b321bcd458561d4400e3dc1dbb6724892241f35325d22c2b35`  
		Last Modified: Fri, 13 Nov 2026 21:56:49 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad17237517b9d577951238f5540acd0fc353e2889f0d882706d0ff8fbb86ab7e`  
		Last Modified: Fri, 13 Nov 2026 21:56:50 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:296b1479ab2a269f844f76e57f5702e4a48469732d38822fe6e6034b48ef8600
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6121755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb4009310c7e5062fea28e4134bf6fbbe626864834f34d7e27ebeb73f80db3e`

```dockerfile
```

-	Layers:
	-	`sha256:8c05d4b6e389f1b938bb81e76aa1bcb9ce7011b598619617a25098182adc79de`  
		Last Modified: Fri, 13 Nov 2026 21:56:45 GMT  
		Size: 6.1 MB (6078530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b59260b4396b37467598e82f5b856c6e6c26a4c04197f44e9bd2762ecf17dda1`  
		Last Modified: Fri, 13 Nov 2026 21:56:45 GMT  
		Size: 43.2 KB (43225 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.5` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:ad45a132a019f3bb85dcc3bd82be4118933fb97b67d7b472f37d25c5514b1517
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **548.6 MB (548648260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a150f974253b3893313de9f9e9972b6cd3245d2c3cb354865d2897a71b47e3d`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:12:46 GMT
ENV container oci
# Thu, 12 Nov 2026 07:12:47 GMT
COPY dir:4d87526a7738e67f2849dec8cc7456d51f10cd8903f2b487983c9a8e8cf85454 in /      
# Thu, 12 Nov 2026 07:12:47 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:12:48 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:12:48 GMT
COPY dir:b8fefbe8743dd0d8522b33cd4fd83dde7d1f8d19d41b8dc58938df13462cf373 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:12:48 GMT
COPY dir:b8fefbe8743dd0d8522b33cd4fd83dde7d1f8d19d41b8dc58938df13462cf373 in /root/buildinfo/      
# Thu, 12 Nov 2026 07:12:49 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:12:16Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:12:16Z" "architecture"="aarch64" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:12:16Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:46:45 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 13 Nov 2026 21:46:45 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:53:30 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 13 Nov 2026 21:53:31 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 13 Nov 2026 21:53:31 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Fri, 13 Nov 2026 21:53:31 GMT
RUN fc-cache -v # buildkit
# Fri, 13 Nov 2026 21:53:31 GMT
WORKDIR /usr/share/kibana
# Fri, 13 Nov 2026 21:53:31 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 13 Nov 2026 21:53:31 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 13 Nov 2026 21:53:31 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:53:31 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 13 Nov 2026 21:53:31 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 21:53:32 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 13 Nov 2026 21:53:33 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 13 Nov 2026 21:53:33 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 13 Nov 2026 21:53:33 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Fri, 13 Nov 2026 21:53:33 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Fri, 13 Nov 2026 21:53:33 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 13 Nov 2026 21:53:33 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 13 Nov 2026 21:53:33 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 13 Nov 2026 21:53:33 GMT
USER 1000
```

-	Layers:
	-	`sha256:d3fe075a76b1285aa041b2e11e27b50e9193a929b1d8a84c06e18764d60bddbc`  
		Last Modified: Thu, 12 Nov 2026 09:56:13 GMT  
		Size: 38.7 MB (38679109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ee0a9af0a0831d2f00062dc171f9f004af2dc67cf257b3c43f7f707fb3b47c4`  
		Last Modified: Fri, 13 Nov 2026 21:54:50 GMT  
		Size: 19.2 MB (19249941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:787237814ada766398a94e4e43c3a873497f65718193efb204f26d5750fb95e9`  
		Last Modified: Fri, 13 Nov 2026 21:54:58 GMT  
		Size: 474.2 MB (474162240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ffd9397b6cc0410488cbff0b6def9d0946c694ac2b6aa5cd7f30bed7babb8c2`  
		Last Modified: Fri, 13 Nov 2026 21:54:49 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6a09a9bae7b359006b0b20532dd67695fb996b49f3f93bd543bd7a6dcdbeaa1`  
		Last Modified: Fri, 13 Nov 2026 21:54:50 GMT  
		Size: 16.5 MB (16460485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a60e73a26091325e6eb32582b339aee9c0d7066328364f6dfe79c0abf2a3bd8`  
		Last Modified: Fri, 13 Nov 2026 21:54:50 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:330cfb653f4539a38409f6bfb97e61c213edc6927a7488060d0051c7f0e3fae7`  
		Last Modified: Fri, 13 Nov 2026 21:54:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f342da8261a281e2dab7b10c8727a4470d2d0632e1dfd06c1f780991bbc7a428`  
		Last Modified: Fri, 13 Nov 2026 21:54:52 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad02df485cb062b1accfc019c3dfbf9a473e12d153ece2e668aeb163ef2915d5`  
		Last Modified: Fri, 13 Nov 2026 21:54:52 GMT  
		Size: 5.0 KB (5003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da6b4be213bacf1007cb924acf6b2df6433ec1be037e39bb2b6758f23d9f1fcc`  
		Last Modified: Fri, 13 Nov 2026 21:54:53 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807c9eb62d8efd74888cc8171b6c6a4bd27d6fe475d0a26cdced7161a9c34d28`  
		Last Modified: Fri, 13 Nov 2026 21:54:53 GMT  
		Size: 73.4 KB (73447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fbb370e252dac2fb84a29e60dfbfac4ee7b07903b346c3fec8baa81e353eba1`  
		Last Modified: Fri, 13 Nov 2026 21:54:53 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:258e286d0bfb589df097a0fd016960b619a4adcc175d8e21ddd5f929833c23be`  
		Last Modified: Fri, 13 Nov 2026 21:54:54 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:2386765343dd3c38ab50feeb2620248a1424fc378f13dca2e0b1b09e0ea53d30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6118903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d461dbc9f60151e8f13cc2223c91e258530b8070fa950797e8436ac469512a78`

```dockerfile
```

-	Layers:
	-	`sha256:7b030e81f7b8eb3dd0c9efc4803e4f88a00be557a01f6a7b7dd0be14ce23b017`  
		Last Modified: Fri, 13 Nov 2026 21:54:50 GMT  
		Size: 6.1 MB (6075420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6da193f1a78a96c22ad92c5a8fb7354bbf105e02604fe575098e7c9c7f67676a`  
		Last Modified: Fri, 13 Nov 2026 21:54:49 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
