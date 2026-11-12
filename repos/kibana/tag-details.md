<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.25`](#kibana81925)
-	[`kibana:9.4.8`](#kibana948)
-	[`kibana:9.5.5`](#kibana955)

## `kibana:8.19.25`

```console
$ docker pull kibana@sha256:ad00f1aef5c6f006be92a4f1ac83438779e61151b15fcba6aacec2d4c9804bb1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:8.19.25` - linux; amd64

```console
$ docker pull kibana@sha256:37cc52b44e0c6e2a3b58b9644d4ba382f251cc20601b6a85a1f94ec22838d4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.7 MB (454732512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad52c0c54d89284405af7c3e415ddafb36d6e0c339ec701001521892127b71a2`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Tue, 10 Nov 2026 20:14:12 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 10 Nov 2026 20:14:12 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 20:22:30 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 10 Nov 2026 20:22:30 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 10 Nov 2026 20:22:30 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 10 Nov 2026 20:22:30 GMT
RUN fc-cache -v # buildkit
# Tue, 10 Nov 2026 20:22:30 GMT
WORKDIR /usr/share/kibana
# Tue, 10 Nov 2026 20:22:30 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 10 Nov 2026 20:22:30 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 10 Nov 2026 20:22:30 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 20:22:31 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 10 Nov 2026 20:22:31 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 20:22:31 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 10 Nov 2026 20:22:32 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 10 Nov 2026 20:22:32 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 10 Nov 2026 20:22:32 GMT
LABEL org.label-schema.build-date=2026-11-05T11:06:44.382Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=3544eac4694b201b2dfb2ece54b8d28c08389679 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.25 org.opencontainers.image.created=2026-11-05T11:06:44.382Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=3544eac4694b201b2dfb2ece54b8d28c08389679 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.25
# Tue, 10 Nov 2026 20:22:32 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 10 Nov 2026 20:22:32 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 10 Nov 2026 20:22:32 GMT
USER 1000
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe0fc91bc96e6a81a1fa481c6b9d49143b0c2692ebb83ea0785cbc9991312cd6`  
		Last Modified: Tue, 10 Nov 2026 20:23:29 GMT  
		Size: 9.4 MB (9412097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649df3b3bc55542a190849ae1e6775ec9c9f43a9b05d4b88d4b48243babf35f9`  
		Last Modified: Tue, 10 Nov 2026 20:23:37 GMT  
		Size: 398.9 MB (398908802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20063e771ca89b96fdbf7f57e64df49404f38e285217d0529d406201c77560fa`  
		Last Modified: Tue, 10 Nov 2026 20:23:28 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df12ca41a7aba371c7f21b1f9af187bd0ff05ee8d58049844d84d709374db1c`  
		Last Modified: Tue, 10 Nov 2026 20:23:29 GMT  
		Size: 16.5 MB (16460486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b251ecd2f428791c00f66233bed00c2fcf00b3fb3ce544f43b435343844017`  
		Last Modified: Tue, 10 Nov 2026 20:23:30 GMT  
		Size: 5.2 KB (5243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:549b5ccc3ccf4feb9e8033b245ee25f016fa56ebb59cf44aca71ab7ac94c3365`  
		Last Modified: Tue, 10 Nov 2026 20:23:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1dc0e04b590bab5416e8b0624f102de4b0c8834ea54462fc0ec7b3561fbf3a`  
		Last Modified: Tue, 10 Nov 2026 20:23:31 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c935acdef90ff1c40dae307dc76d1992fc7b65586608dc70bed9b8062885f9`  
		Last Modified: Tue, 10 Nov 2026 20:23:31 GMT  
		Size: 4.8 KB (4822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1efe4224a37c40b5e83209c52825f3bce6964109fe3d4e633614365cce5c17`  
		Last Modified: Tue, 10 Nov 2026 20:23:32 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:260845f48bf87333496702b03c5df390aa7bc97134b020ad026ada7b7c60d85d`  
		Last Modified: Tue, 10 Nov 2026 20:23:32 GMT  
		Size: 161.7 KB (161739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b21839f8528149e30f923ca13d7e0dc3027cc2fc6e88f885c8db604cdeb18c`  
		Last Modified: Tue, 10 Nov 2026 20:23:32 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.25` - unknown; unknown

```console
$ docker pull kibana@sha256:38cc5bc69a4741fff1148fd705bb04529c280bd28bad7187582ff0de474ef2a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4760241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:840d9998b1b0174525450e1cb0f40d272a7364d5d633713a3dab25db350853b4`

```dockerfile
```

-	Layers:
	-	`sha256:df7354a1572ca3c58b2b1633876956ea7f81cc8cd3c7d4085e73ca4ec6403968`  
		Last Modified: Tue, 10 Nov 2026 20:23:28 GMT  
		Size: 4.7 MB (4719326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ba48ad4ca748a8224b4924892bb7a4995290cefb9dbe9b817de8070d044864a`  
		Last Modified: Tue, 10 Nov 2026 20:23:28 GMT  
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
$ docker pull kibana@sha256:357b2442e475d0c87738df8c2aaeac17b67e7acb7563efbf30ce1bc64cd97bd2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.8` - linux; amd64

```console
$ docker pull kibana@sha256:a8e6e1bcd56112a5f2cb6ffe04472a1963d5b3f11fdfc3eb7b8c63514bf384d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.6 MB (545620406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6ed957ad465bccf40077a68c48609f5a8d5e0aa156f23412680a7c079605312`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL compose-id="RHEL-9.9.0-updates-20261104.1"
# Wed, 04 Nov 2026 22:05:31 GMT
ENV container oci
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1065617e8ffc1bf546938007c42ca6d2543da069b404ba7a3172b874660980aa in /      
# Wed, 04 Nov 2026 22:05:32 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 22:05:32 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1ab382ed5e5527a5acf26f9606924257387798102c175f648912db04e0637441 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1ab382ed5e5527a5acf26f9606924257387798102c175f648912db04e0637441 in /root/buildinfo/      
# Wed, 04 Nov 2026 22:05:33 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T22:05:11Z" "org.opencontainers.image.revision"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "build-date"="2026-11-04T22:05:11Z" "architecture"="x86_64" "vcs-ref"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "vcs-type"="git" "release"="1793829856"org.opencontainers.image.created=2026-11-04T22:05:11Z,org.opencontainers.image.revision=3592a7d8ff6441cbbd6d757af862d711d3e1dc3a
# Wed, 11 Nov 2026 22:45:01 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 11 Nov 2026 22:45:01 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:54:43 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 11 Nov 2026 22:54:44 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 11 Nov 2026 22:54:44 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 11 Nov 2026 22:54:44 GMT
RUN fc-cache -v # buildkit
# Wed, 11 Nov 2026 22:54:44 GMT
WORKDIR /usr/share/kibana
# Wed, 11 Nov 2026 22:54:44 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 11 Nov 2026 22:54:44 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 11 Nov 2026 22:54:44 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:54:44 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 11 Nov 2026 22:54:44 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 22:54:45 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 11 Nov 2026 22:54:46 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 11 Nov 2026 22:54:46 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 11 Nov 2026 22:54:46 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Wed, 11 Nov 2026 22:54:46 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 11 Nov 2026 22:54:46 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 11 Nov 2026 22:54:46 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 11 Nov 2026 22:54:46 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 11 Nov 2026 22:54:46 GMT
USER 1000
```

-	Layers:
	-	`sha256:d17fc3a27a551e8e18348f89a75752fab8f83ab83c8dd4d22bcf3418f9e6a06a`  
		Last Modified: Wed, 11 Nov 2026 05:24:43 GMT  
		Size: 40.7 MB (40684080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af0da0451e0e38b2418ec604283f8cd38fb6391f23b543a5cdb169b908edb814`  
		Last Modified: Wed, 11 Nov 2026 22:56:01 GMT  
		Size: 19.3 MB (19309973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b3b6c28828499b2f4dcfea0b0abeed8755fe3439991896995a869c8cb6aa2de`  
		Last Modified: Wed, 11 Nov 2026 22:56:09 GMT  
		Size: 469.1 MB (469067949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c875d76e43882baa30ec210b4926bab75015c1c6d479a5772d9ce3db07ac30`  
		Last Modified: Wed, 11 Nov 2026 22:56:00 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd9fd9367fabeb66e8fc0b1918f951408933b1d00fc07cf1fb137ef5264bf58d`  
		Last Modified: Wed, 11 Nov 2026 22:56:01 GMT  
		Size: 16.5 MB (16460475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62b0812db63ba363f7f6da381fc6cff34048e01dd4f86fca703ce41840c48f32`  
		Last Modified: Wed, 11 Nov 2026 22:56:01 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b87a064bf014bd58b2cd030c67d76edb1cbc3b6f079bf75bce73f2d109fa972`  
		Last Modified: Wed, 11 Nov 2026 22:56:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5acc5fdd8ffead94cfa63052c113b205891e811edc365081a74a7ac1211c5927`  
		Last Modified: Wed, 11 Nov 2026 22:56:03 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790206ac043d1932140bb92309d1e232d5eb55457119983c025a77f109568b1a`  
		Last Modified: Wed, 11 Nov 2026 22:56:03 GMT  
		Size: 4.9 KB (4931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9527186d533f58b9c10f10b70c3b52c68e4009965372dbb958ed5c4712993e6`  
		Last Modified: Wed, 11 Nov 2026 22:56:04 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abcaedc5b865e2fef45e9b07743b28be24ef99b559a13b29c1a54f10c50ab59e`  
		Last Modified: Wed, 11 Nov 2026 22:56:04 GMT  
		Size: 74.5 KB (74524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66d45023973c980ee669cce81e459b2879521d9aec25c479d5d5702bf58e4344`  
		Last Modified: Wed, 11 Nov 2026 22:56:04 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b8c127dc1b9a19a26388618bc511bab1a7bf9f7593c96616f0daf0d01ca3861`  
		Last Modified: Wed, 11 Nov 2026 22:56:05 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:75caffd3ddba288249331a3bb5ba88a81b63863ada5f144bdddc71e63fd9e534
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5901623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7a278fdcc269838533b3ad27b42ef7cf42e1d48b12f1079869e4efbc718aa3`

```dockerfile
```

-	Layers:
	-	`sha256:cda3a6521cd494891ac1e4c46e9b15cba96a21c5b56433991f9d9a41344732be`  
		Last Modified: Wed, 11 Nov 2026 22:56:01 GMT  
		Size: 5.9 MB (5858397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:affdd63519ad9ccfd49929a1c2847254a93cae3dd098252476e4ac1babb44d4c`  
		Last Modified: Wed, 11 Nov 2026 22:56:00 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:fd8d0c5f403262df4331403c08eeb8a420183cfb542f190a33c5bb20f5c65e46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **557.1 MB (557100983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7b5e8af886a41cb68d2b3deeec6f638b5ece39383c1acb367a321716dabe00e`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL compose-id="RHEL-9.9.0-updates-20261104.1"
# Wed, 04 Nov 2026 22:08:32 GMT
ENV container oci
# Wed, 04 Nov 2026 22:08:34 GMT
COPY dir:514821c1507761c7c104b4178930c927c06b94af3fc77862fad4455413d5880e in /      
# Wed, 04 Nov 2026 22:08:34 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 22:08:34 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:08:34 GMT
COPY dir:20e16dd534db21c03fd41a8260fa88cb0c28dcaa178172c5bc5b5c7a2dea8c79 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 22:08:35 GMT
COPY dir:20e16dd534db21c03fd41a8260fa88cb0c28dcaa178172c5bc5b5c7a2dea8c79 in /root/buildinfo/      
# Wed, 04 Nov 2026 22:08:35 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T22:08:02Z" "org.opencontainers.image.revision"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "build-date"="2026-11-04T22:08:02Z" "architecture"="aarch64" "vcs-ref"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "vcs-type"="git" "release"="1793829856"org.opencontainers.image.created=2026-11-04T22:08:02Z,org.opencontainers.image.revision=3592a7d8ff6441cbbd6d757af862d711d3e1dc3a
# Wed, 11 Nov 2026 22:09:03 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 11 Nov 2026 22:09:03 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:17:04 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 11 Nov 2026 22:17:04 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 11 Nov 2026 22:17:04 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 11 Nov 2026 22:17:05 GMT
RUN fc-cache -v # buildkit
# Wed, 11 Nov 2026 22:17:05 GMT
WORKDIR /usr/share/kibana
# Wed, 11 Nov 2026 22:17:05 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 11 Nov 2026 22:17:05 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 11 Nov 2026 22:17:05 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:17:05 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 11 Nov 2026 22:17:05 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 22:17:06 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 11 Nov 2026 22:17:07 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 11 Nov 2026 22:17:07 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 11 Nov 2026 22:17:07 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Wed, 11 Nov 2026 22:17:07 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 11 Nov 2026 22:17:07 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 11 Nov 2026 22:17:07 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 11 Nov 2026 22:17:07 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 11 Nov 2026 22:17:07 GMT
USER 1000
```

-	Layers:
	-	`sha256:d5ceb6f197425acf5c32ac1cedc02e2f97c8b1b35cb2e31fb4bec7c6399a2811`  
		Last Modified: Wed, 11 Nov 2026 05:24:42 GMT  
		Size: 38.8 MB (38769518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:595ed8d9cd5c563340a3ab3c5f917ad1a13165189e1e5a65186e5256dc9e3904`  
		Last Modified: Wed, 11 Nov 2026 22:18:29 GMT  
		Size: 19.3 MB (19250568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ddcd95f5f2c9464790f9afa213ccbc0953254b14852166c7ff64d3f747934eb`  
		Last Modified: Wed, 11 Nov 2026 22:18:37 GMT  
		Size: 482.5 MB (482523984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a955ab31ecf1cc54343baeac369ea4c8f33c38362892bfc66e58c593157a380`  
		Last Modified: Wed, 11 Nov 2026 22:18:28 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a0008a13c4ae265b07e95982f9a8945722fe49ea87ba477cbf5f907785338d`  
		Last Modified: Wed, 11 Nov 2026 22:18:29 GMT  
		Size: 16.5 MB (16460494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cffd698c594960a90568b2bdcafce5813824916fb9c725aac2a4e13e43e3c52`  
		Last Modified: Wed, 11 Nov 2026 22:18:29 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a49dfc26457e940f3c3a878bf7f8b4933fd2a272581c90659f6622a96355822`  
		Last Modified: Wed, 11 Nov 2026 22:18:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95a393f49f8ae20df4df1a01ab0beea7326303403ade01b7268b64b9ed13dae7`  
		Last Modified: Wed, 11 Nov 2026 22:18:30 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb92bac73fb564545513c0370b49c16537660fe76cc2ce78424c10f378e8b7e`  
		Last Modified: Wed, 11 Nov 2026 22:18:31 GMT  
		Size: 4.9 KB (4929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af08559f175b528d481a01d753e7ee86299144c355dbec0db5486f252190ac47`  
		Last Modified: Wed, 11 Nov 2026 22:18:32 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac5281c0855ca3e07c7bc25e98181f68c7e6abe098c6cb01eab7b029aeba557`  
		Last Modified: Wed, 11 Nov 2026 22:18:32 GMT  
		Size: 73.4 KB (73447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66079d23bb46798b75a1ab3235e388221d27a7a3763738054ce4276952cf32df`  
		Last Modified: Wed, 11 Nov 2026 22:18:32 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd875cd1e65fe642dc850253b0373e331a7a5f5edd2f6fb91016b610a88b9920`  
		Last Modified: Wed, 11 Nov 2026 22:18:33 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:9d4db40daca9ca97ce6129b326c37313140b9cc07622c2f0ac559de80bdd38f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5898770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7195b1b3bcef487f4068a898fb9af4b53a561c15a5925cb370034d847f25078`

```dockerfile
```

-	Layers:
	-	`sha256:c6e7b5597fbf64337c55aef717a3b0a76b7b5f642dab3f5557cc3c9789782b28`  
		Last Modified: Wed, 11 Nov 2026 22:18:28 GMT  
		Size: 5.9 MB (5855287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bce9b155055dafb35b3dfff3f6084a8003c2c3a9e90482d6ef5fb2679497d45`  
		Last Modified: Wed, 11 Nov 2026 22:18:28 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.5`

```console
$ docker pull kibana@sha256:f5bf161e788004ea47db4f84504d87532c13dc815904a20fe9b37cf290de856d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.5` - linux; amd64

```console
$ docker pull kibana@sha256:44bc6909bdb239a0de37797eeb0eb83d4d17f22a064bca5475302d7cbc7bd49c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.3 MB (537250512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0449d6b6faf2eeb1919964e22899b608b8d40ffb1c952befb9d67dd2aff0f218`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL compose-id="RHEL-9.9.0-updates-20261104.1"
# Wed, 04 Nov 2026 22:05:31 GMT
ENV container oci
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1065617e8ffc1bf546938007c42ca6d2543da069b404ba7a3172b874660980aa in /      
# Wed, 04 Nov 2026 22:05:32 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 22:05:32 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1ab382ed5e5527a5acf26f9606924257387798102c175f648912db04e0637441 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1ab382ed5e5527a5acf26f9606924257387798102c175f648912db04e0637441 in /root/buildinfo/      
# Wed, 04 Nov 2026 22:05:33 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T22:05:11Z" "org.opencontainers.image.revision"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "build-date"="2026-11-04T22:05:11Z" "architecture"="x86_64" "vcs-ref"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "vcs-type"="git" "release"="1793829856"org.opencontainers.image.created=2026-11-04T22:05:11Z,org.opencontainers.image.revision=3592a7d8ff6441cbbd6d757af862d711d3e1dc3a
# Wed, 11 Nov 2026 22:48:14 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 11 Nov 2026 22:48:14 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:56:27 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 11 Nov 2026 22:56:28 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 11 Nov 2026 22:56:28 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 11 Nov 2026 22:56:28 GMT
RUN fc-cache -v # buildkit
# Wed, 11 Nov 2026 22:56:28 GMT
WORKDIR /usr/share/kibana
# Wed, 11 Nov 2026 22:56:28 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 11 Nov 2026 22:56:28 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 11 Nov 2026 22:56:28 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:56:28 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 11 Nov 2026 22:56:28 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 22:56:29 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 11 Nov 2026 22:56:29 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 11 Nov 2026 22:56:30 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 11 Nov 2026 22:56:30 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Wed, 11 Nov 2026 22:56:30 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 11 Nov 2026 22:56:30 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 11 Nov 2026 22:56:30 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 11 Nov 2026 22:56:30 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 11 Nov 2026 22:56:30 GMT
USER 1000
```

-	Layers:
	-	`sha256:d17fc3a27a551e8e18348f89a75752fab8f83ab83c8dd4d22bcf3418f9e6a06a`  
		Last Modified: Wed, 11 Nov 2026 05:24:43 GMT  
		Size: 40.7 MB (40684080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4170774aef0d10ac7c088cd3c59a07d73c9bd7080cead3c256cb67b89a3efc66`  
		Last Modified: Wed, 11 Nov 2026 22:57:35 GMT  
		Size: 19.3 MB (19309783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65a58b59bd31b9e0b688a6a381fd00cceb9f002a9db8a11b67e5bcc42e30b4ed`  
		Last Modified: Wed, 11 Nov 2026 22:57:43 GMT  
		Size: 460.7 MB (460698161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30f4120f5e51617c3bd7f18069f763fc4885024ee8d2864f87ea05372117673`  
		Last Modified: Wed, 11 Nov 2026 22:57:34 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef050f7982e338cbdd565cc016a05dba8a2c70952cad27968ace9169c1f7ea8`  
		Last Modified: Wed, 11 Nov 2026 22:57:35 GMT  
		Size: 16.5 MB (16460487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d7550cc8718647290edbed03332edc63ee917a4611a6a549b88e69e956e9ff3`  
		Last Modified: Wed, 11 Nov 2026 22:57:35 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3592a5a9ac48e11ded0e7c77a25e05303e20644867bc1027a0302cb254b97a16`  
		Last Modified: Wed, 11 Nov 2026 22:57:37 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f02589bca3edf0731a695e3c2bbb95bb292b98292d41b5ecf1d4108f1f288e0e`  
		Last Modified: Wed, 11 Nov 2026 22:57:37 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49a1e57b4d842dc33a605a8e8895e8b847531c8288820022ea7bc1433752a4f6`  
		Last Modified: Wed, 11 Nov 2026 22:57:37 GMT  
		Size: 5.0 KB (5006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b6e0b40153079652300eef2e97cea3c44a63ab93d07645e03686edfd53c65e0`  
		Last Modified: Wed, 11 Nov 2026 22:57:38 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77f35c1b19321ba88eb6f4a0e09b6109d6a3308d02aaa80b348862f6a9833a1e`  
		Last Modified: Wed, 11 Nov 2026 22:57:38 GMT  
		Size: 74.5 KB (74524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e2237687c60ae6641838d367d32e755f7524e982cfff31759c37dfd46520278`  
		Last Modified: Wed, 11 Nov 2026 22:57:38 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6944d3da617fe9b4c5376b33ce00645fe4f1761f7d6c36177bdd379116eafd`  
		Last Modified: Wed, 11 Nov 2026 22:57:39 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:20f32ba6ba577242c94d70eb373e3483880a7be39e8ab670a56ee300fe2310c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6121688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfd96ccfc75fee197e508861188af1a4978134a666fe2bc6a7a876fe02941f55`

```dockerfile
```

-	Layers:
	-	`sha256:6d78dcb19bf09d8179b45feba792121671a9979eec3e6039d945debeb21fedd3`  
		Last Modified: Wed, 11 Nov 2026 22:57:34 GMT  
		Size: 6.1 MB (6078462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe87ce2c3b407f73aa8de0eb08fb9130cc9a0e2e01f8a5a31ee2b877dcd01d25`  
		Last Modified: Wed, 11 Nov 2026 22:57:34 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.5` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:98db2377a84d9c796717af55db1ac9501ba7b4548739ed478f03c4c33cb935c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **548.7 MB (548739454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b291e912e1633d4ea0e1f7f2d4188ea785674d0cce7314de343b8cd40d62d07c`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL compose-id="RHEL-9.9.0-updates-20261104.1"
# Wed, 04 Nov 2026 22:08:32 GMT
ENV container oci
# Wed, 04 Nov 2026 22:08:34 GMT
COPY dir:514821c1507761c7c104b4178930c927c06b94af3fc77862fad4455413d5880e in /      
# Wed, 04 Nov 2026 22:08:34 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 22:08:34 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:08:34 GMT
COPY dir:20e16dd534db21c03fd41a8260fa88cb0c28dcaa178172c5bc5b5c7a2dea8c79 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 22:08:35 GMT
COPY dir:20e16dd534db21c03fd41a8260fa88cb0c28dcaa178172c5bc5b5c7a2dea8c79 in /root/buildinfo/      
# Wed, 04 Nov 2026 22:08:35 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T22:08:02Z" "org.opencontainers.image.revision"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "build-date"="2026-11-04T22:08:02Z" "architecture"="aarch64" "vcs-ref"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "vcs-type"="git" "release"="1793829856"org.opencontainers.image.created=2026-11-04T22:08:02Z,org.opencontainers.image.revision=3592a7d8ff6441cbbd6d757af862d711d3e1dc3a
# Wed, 11 Nov 2026 22:09:02 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 11 Nov 2026 22:09:02 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:15:52 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 11 Nov 2026 22:15:53 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 11 Nov 2026 22:15:53 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 11 Nov 2026 22:15:53 GMT
RUN fc-cache -v # buildkit
# Wed, 11 Nov 2026 22:15:53 GMT
WORKDIR /usr/share/kibana
# Wed, 11 Nov 2026 22:15:53 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 11 Nov 2026 22:15:53 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 11 Nov 2026 22:15:53 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:15:53 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 11 Nov 2026 22:15:53 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 22:15:54 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 11 Nov 2026 22:15:55 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 11 Nov 2026 22:15:55 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 11 Nov 2026 22:15:55 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Wed, 11 Nov 2026 22:15:55 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 11 Nov 2026 22:15:55 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 11 Nov 2026 22:15:55 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 11 Nov 2026 22:15:55 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 11 Nov 2026 22:15:55 GMT
USER 1000
```

-	Layers:
	-	`sha256:d5ceb6f197425acf5c32ac1cedc02e2f97c8b1b35cb2e31fb4bec7c6399a2811`  
		Last Modified: Wed, 11 Nov 2026 05:24:42 GMT  
		Size: 38.8 MB (38769518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb81316b705c265b3d7c2a959d253f76750505136d57b972c055a191b3596bfe`  
		Last Modified: Wed, 11 Nov 2026 22:17:13 GMT  
		Size: 19.3 MB (19250509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b823cd062dc133156721ab38381e6a8032669ab03bb6db1d440aa6e58d66d5ec`  
		Last Modified: Wed, 11 Nov 2026 22:17:20 GMT  
		Size: 474.2 MB (474162448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030d243e4d7c595c020f64fd8b740e1dbc6e0accb4185e5b6beabadbc983dbcc`  
		Last Modified: Wed, 11 Nov 2026 22:17:12 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25eb6fdcb9642fafafdbc37d438fcb83ed514c5b32da9ffb7edff010deaa3803`  
		Last Modified: Wed, 11 Nov 2026 22:17:13 GMT  
		Size: 16.5 MB (16460484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3c4cce736703c816375187b722fea103a94cf00282df2c0ae7618eeb9165ff`  
		Last Modified: Wed, 11 Nov 2026 22:17:13 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd795ad1b0384268426efa4bf8d154ccaf141585b907ec2fe326e7eec36c62f7`  
		Last Modified: Wed, 11 Nov 2026 22:17:14 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f51f91fd2563cec2c934999a83e9914ac1e1830fddcff7f036cbec95b967f31`  
		Last Modified: Wed, 11 Nov 2026 22:17:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bb0b8176a290d4f4fcb27064bf4e3f36367f2c129b95fa4dec96e09858b6d4a`  
		Last Modified: Wed, 11 Nov 2026 22:17:14 GMT  
		Size: 5.0 KB (5003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ea4df5ed104cfbe51d7acfcb23e9870bf38417b8c4f069cab58b528b55f7e9`  
		Last Modified: Wed, 11 Nov 2026 22:17:15 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44456958a2f18d58dbdfd1fbdcf0cd7ab5203b5a508906a99ead85d4134a8f95`  
		Last Modified: Wed, 11 Nov 2026 22:17:16 GMT  
		Size: 73.4 KB (73447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf3806a93194eb1cf12b785ef1c873a53fcda090f26d24a66db341f117f6f1b`  
		Last Modified: Wed, 11 Nov 2026 22:17:16 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a2372f70a3eca2e6c66866b1382bf217dc3ad7d85b7856da3a0fb424a3b57b0`  
		Last Modified: Wed, 11 Nov 2026 22:17:17 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:574f8aa41c65d32def0900199c62b11cd66a5457d4dd196c49085b11f280ad61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6118835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c04851286f692b8c617fd277547e36c030d822f705126fa97d14cd7ca1d4ef`

```dockerfile
```

-	Layers:
	-	`sha256:eaacaebb4ac0fdd4046dc6a6389d22aa1aaefc7d13f43d0664602ba1038db2c5`  
		Last Modified: Wed, 11 Nov 2026 22:17:12 GMT  
		Size: 6.1 MB (6075352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3804c7ab9c9d90cc4e3cd662c2a959786cd9bbf2c04b92f195da09c48d539e32`  
		Last Modified: Wed, 11 Nov 2026 22:17:12 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
