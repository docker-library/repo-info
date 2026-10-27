<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.23`](#kibana81923)
-	[`kibana:9.4.8`](#kibana948)
-	[`kibana:9.5.5`](#kibana955)

## `kibana:8.19.23`

```console
$ docker pull kibana@sha256:5974054d04b8cbfde28ba26977e6cc0ae0a59d44d7c0e20fb93724b4de7e8741
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:8.19.23` - linux; amd64

```console
$ docker pull kibana@sha256:d566025dc208b3901540d907e11b044a0ecdf9c27b5787e35517d83ba4a68e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.5 MB (459471196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b85f3247758d8d17eb25ece7bbec3b38bad772f099e8691bc147a679c21c5f14`
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
# Mon, 26 Oct 2026 23:24:06 GMT
EXPOSE map[5601/tcp:{}]
# Mon, 26 Oct 2026 23:24:06 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:32:09 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Mon, 26 Oct 2026 23:32:09 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Mon, 26 Oct 2026 23:32:09 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Mon, 26 Oct 2026 23:32:09 GMT
RUN fc-cache -v # buildkit
# Mon, 26 Oct 2026 23:32:09 GMT
WORKDIR /usr/share/kibana
# Mon, 26 Oct 2026 23:32:09 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Mon, 26 Oct 2026 23:32:09 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 26 Oct 2026 23:32:09 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:32:09 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Mon, 26 Oct 2026 23:32:09 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:32:10 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Mon, 26 Oct 2026 23:32:11 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Mon, 26 Oct 2026 23:32:11 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Mon, 26 Oct 2026 23:32:11 GMT
LABEL org.label-schema.build-date=2026-09-30T22:09:35.031Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=bb0fffbaf841ec1d529c098d5d10ff9b43f976ff org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.23 org.opencontainers.image.created=2026-09-30T22:09:35.031Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=bb0fffbaf841ec1d529c098d5d10ff9b43f976ff org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.23
# Mon, 26 Oct 2026 23:32:11 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Mon, 26 Oct 2026 23:32:11 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Mon, 26 Oct 2026 23:32:11 GMT
USER 1000
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1788eee2a1beddb82c57d2e7029da309ace5d34d650be41174497d4a4eeb046`  
		Last Modified: Mon, 26 Oct 2026 23:33:06 GMT  
		Size: 9.4 MB (9411628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5150daab6a860845c135b1e75484dceee770e28c12c9f7fe06c2ebe4270a3cff`  
		Last Modified: Mon, 26 Oct 2026 23:33:17 GMT  
		Size: 403.6 MB (403647962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42bfe8bc25947b792005c836d55695f18b88a97f86cf0cf6a7d40c867939d7a2`  
		Last Modified: Mon, 26 Oct 2026 23:33:05 GMT  
		Size: 9.5 KB (9529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0039b615d71cdc68e28c3ee0e81a192acbb9c0c2a116d412ce8b1ac1f685618c`  
		Last Modified: Mon, 26 Oct 2026 23:33:06 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a334e3f177c049cd3b4591adfbf0c48b8cb7cab0422151e987e54ac1b637db85`  
		Last Modified: Mon, 26 Oct 2026 23:33:07 GMT  
		Size: 5.2 KB (5240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f8c99c26010c45ebf9175e347c624241d129b487eb8fde1b169245c643775d`  
		Last Modified: Mon, 26 Oct 2026 23:33:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8abb42d6b1c65e8c5da525b6f307431dd0a36e054db9ef0df65a687f08333322`  
		Last Modified: Mon, 26 Oct 2026 23:33:08 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b5e95997530986af059f892d6d23acc441d9be5999fe67683bef5ffbb07f2b`  
		Last Modified: Mon, 26 Oct 2026 23:33:08 GMT  
		Size: 4.8 KB (4818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bbdb2c553ec87ca26a41d5d695491c0c76240043c159a889ac5f1dc58121d37`  
		Last Modified: Mon, 26 Oct 2026 23:33:09 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e70290b72ef2dd7c90042721cc95b47f7a89dd62c42a856f738767fd00ced22d`  
		Last Modified: Mon, 26 Oct 2026 23:33:09 GMT  
		Size: 161.7 KB (161738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd7c6f0d746e76c02d268120559c6950430d0a5d2c196bb7e0d676eb6bb7ab60`  
		Last Modified: Mon, 26 Oct 2026 23:33:09 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.23` - unknown; unknown

```console
$ docker pull kibana@sha256:c34f5b601cc3e7598ae5d6f9fd6d744d5ce7f2bbd50cdd443d8f534f0d655e1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4925264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da8a6c3de5e0234e2641c169409f105697d2ca74921fc7eb9de595575a3d0909`

```dockerfile
```

-	Layers:
	-	`sha256:b91ba8b7e435b450beecabf7cf3f0086974319a3c02faa790bfa61b9f8b57a22`  
		Last Modified: Mon, 26 Oct 2026 23:33:06 GMT  
		Size: 4.9 MB (4884349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91bd6d493ea4b99a49407f8dae165743d86b7588678302f0339d04658ed0f6ec`  
		Last Modified: Mon, 26 Oct 2026 23:33:05 GMT  
		Size: 40.9 KB (40915 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:8.19.23` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:1954aad42a3d69c6b0a1d1a7b84083b05ccdc1a0c9adfc81b1b41d4d5823e136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.1 MB (472122135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c184944d2a42e586c72c3a818828671858cbda811ac716b49d7bc829af7db3c3`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:28:43 GMT
EXPOSE map[5601/tcp:{}]
# Mon, 26 Oct 2026 23:28:43 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:35:11 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Mon, 26 Oct 2026 23:35:11 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Mon, 26 Oct 2026 23:35:11 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Mon, 26 Oct 2026 23:35:12 GMT
RUN fc-cache -v # buildkit
# Mon, 26 Oct 2026 23:35:12 GMT
WORKDIR /usr/share/kibana
# Mon, 26 Oct 2026 23:35:12 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Mon, 26 Oct 2026 23:35:12 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 26 Oct 2026 23:35:12 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:35:12 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Mon, 26 Oct 2026 23:35:12 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:35:12 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Mon, 26 Oct 2026 23:35:13 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Mon, 26 Oct 2026 23:35:14 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Mon, 26 Oct 2026 23:35:14 GMT
LABEL org.label-schema.build-date=2026-09-30T22:09:35.031Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=bb0fffbaf841ec1d529c098d5d10ff9b43f976ff org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.23 org.opencontainers.image.created=2026-09-30T22:09:35.031Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=bb0fffbaf841ec1d529c098d5d10ff9b43f976ff org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.23
# Mon, 26 Oct 2026 23:35:14 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Mon, 26 Oct 2026 23:35:14 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Mon, 26 Oct 2026 23:35:14 GMT
USER 1000
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59aaedd90622e62b58d94c1b723669432d88591ec7269452893d86073b0d274b`  
		Last Modified: Mon, 26 Oct 2026 23:36:23 GMT  
		Size: 9.4 MB (9436913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dabc0d992a1b0100ad0496fa3555d7a547d5f69161e3061ee6ac9a356bc6462`  
		Last Modified: Mon, 26 Oct 2026 23:36:31 GMT  
		Size: 417.1 MB (417105016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d270279aa9c9d56a51b8edbca724e18369848de7c00b37c0619bc88193ecc9b5`  
		Last Modified: Mon, 26 Oct 2026 23:36:22 GMT  
		Size: 9.1 KB (9098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f712496392b411e904a70efc17ce56b3ef475288881d164e635581d61510af`  
		Last Modified: Mon, 26 Oct 2026 23:36:24 GMT  
		Size: 16.5 MB (16460485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5faaa2ce78b7f3850f237dfc07c0baf0f2e1ffe58aeffa30e2365a2e84f873c7`  
		Last Modified: Mon, 26 Oct 2026 23:36:24 GMT  
		Size: 5.2 KB (5242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0208d970b538f1b7fbd3a5579c5ce2a6b7bc96d4d0ba2b6e4220d322b45df08b`  
		Last Modified: Mon, 26 Oct 2026 23:36:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7317047220539607160b5414a0933f1071fe0e960b504bb835ec2af516209021`  
		Last Modified: Mon, 26 Oct 2026 23:36:25 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f6b7091c51bea5b53f0bbe2be1491cd0e6d8ab002d3d803004115b436294916`  
		Last Modified: Mon, 26 Oct 2026 23:36:25 GMT  
		Size: 4.8 KB (4819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c761e7cdf3195d2b27506fe8b373a417fa398e1c662d9bfd64c377e3620005ac`  
		Last Modified: Mon, 26 Oct 2026 23:36:26 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:610113f5d8017fbf94338e5247abc0a84a7aa6da81cd5b7e915ca0e23a586ce3`  
		Last Modified: Mon, 26 Oct 2026 23:36:26 GMT  
		Size: 158.3 KB (158252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8089d0d8c0e99d79ab95e97ac772aa245156e56ecf23b74e1cce9efa2e3ef76`  
		Last Modified: Mon, 26 Oct 2026 23:36:26 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.23` - unknown; unknown

```console
$ docker pull kibana@sha256:40e3ec5539fd1e9c6d0838c3465f89a71fac4521b583680faf501213996f25fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4926575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add30f9a89ac705a3a1e3a81ef9be881e3448232b96b5da1029034e36d28d32a`

```dockerfile
```

-	Layers:
	-	`sha256:fcb67829e0f43fe550543e5c5b887afa383a72188122cdf3b540c630cec84dd8`  
		Last Modified: Mon, 26 Oct 2026 23:36:23 GMT  
		Size: 4.9 MB (4885413 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6aff7af7ac6847d6895495147b610b106fd450d1b6f2c222840b8ca6061cc566`  
		Last Modified: Mon, 26 Oct 2026 23:36:23 GMT  
		Size: 41.2 KB (41162 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.8`

```console
$ docker pull kibana@sha256:d3e7314f0d2d6ce9c9669cc97cdb8e5f3eee532ccc7470684f9ca7ceee95a291
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.8` - linux; amd64

```console
$ docker pull kibana@sha256:ee417bae4693f1487f42f538bebb3719f342571a5b9342be488e88cccf7fe046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.6 MB (545553549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:551739153718a78347421f36bcf8f1d8b99ce0be5626d933a43cf9f7d72b352c`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:55:55 GMT
ENV container oci
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:2fc4551098c6ebd5c0304b2f61efdc67d6aebcbff8032750054f600bbeec82fc in /      
# Fri, 23 Oct 2026 07:55:56 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:55:56 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:a78b034003bd0e620e960223059e9c224ee88be75273ffd75b7039efe65e4145 in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:a78b034003bd0e620e960223059e9c224ee88be75273ffd75b7039efe65e4145 in /root/buildinfo/      
# Fri, 23 Oct 2026 07:55:57 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:55:29Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:55:29Z" "architecture"="x86_64" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:55:29Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 16:51:20 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 23 Oct 2026 16:51:20 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Fri, 23 Oct 2026 17:00:53 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 23 Oct 2026 17:00:54 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 23 Oct 2026 17:00:54 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Fri, 23 Oct 2026 17:00:54 GMT
RUN fc-cache -v # buildkit
# Fri, 23 Oct 2026 17:00:54 GMT
WORKDIR /usr/share/kibana
# Fri, 23 Oct 2026 17:00:54 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 23 Oct 2026 17:00:54 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 23 Oct 2026 17:00:54 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 17:00:54 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 23 Oct 2026 17:00:54 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 17:00:55 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 23 Oct 2026 17:00:56 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 23 Oct 2026 17:00:56 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 23 Oct 2026 17:00:56 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Fri, 23 Oct 2026 17:00:56 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Fri, 23 Oct 2026 17:00:56 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 23 Oct 2026 17:00:56 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 23 Oct 2026 17:00:56 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 23 Oct 2026 17:00:56 GMT
USER 1000
```

-	Layers:
	-	`sha256:74b09d47403b6e0522a8cc3fd6a898259e54bbaae0be6c397399bd41ee27d9c1`  
		Last Modified: Fri, 23 Oct 2026 09:52:32 GMT  
		Size: 40.6 MB (40609256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cff92bb1d910758c85bcb8c6627f7bc86cf68816f98b04c01488650de934f3`  
		Last Modified: Fri, 23 Oct 2026 17:02:14 GMT  
		Size: 19.3 MB (19306019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8430fe29741d2575d781be86e3f7626ad330c0ca58092079f6904060f058efd`  
		Last Modified: Fri, 23 Oct 2026 17:02:22 GMT  
		Size: 469.1 MB (469079854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8cab90ba7333443700d75a4b2d002021f0b5397729aaa2f6c372e8a29a3dbf`  
		Last Modified: Fri, 23 Oct 2026 17:02:13 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a8601ea43320b6db6ce4b3b35309d13ca5bc294230b3ee98514e466437bf37`  
		Last Modified: Fri, 23 Oct 2026 17:02:14 GMT  
		Size: 16.5 MB (16460481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5f9ba88c32399b3ad1ee3768339bd8cd077198d150f5a7bc48dcad8640a0e0d`  
		Last Modified: Fri, 23 Oct 2026 17:02:14 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb26957311d7db5edbeade31d0a07624cdb80aa43bd2924c86587345a83e1c6`  
		Last Modified: Fri, 23 Oct 2026 17:02:16 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b52ed8c4bf4c40b1caa2b751073a8a0c095392dad0393a5bdafbeca81b3b46`  
		Last Modified: Fri, 23 Oct 2026 17:02:16 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613c46b7f5761c3e552959e173071b33308fd8a5ebbf047b6013baf82a3ced68`  
		Last Modified: Fri, 23 Oct 2026 17:02:16 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f91f24f21243bfde0d4cb8b81684d639dfe1d9acd2b57cd0bf018117b98983`  
		Last Modified: Fri, 23 Oct 2026 17:02:17 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a18a8fbf4bda455119d7acc10dc4e6975b03fd743b4ea6f99d986375b58612`  
		Last Modified: Fri, 23 Oct 2026 17:02:17 GMT  
		Size: 74.5 KB (74541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55bb44ab29d9235e14883f21bba6ed8ee0b0abd663742635614e87d030eb29b4`  
		Last Modified: Fri, 23 Oct 2026 17:02:17 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6942f5264fa1db5cbe949c97a8651313e06f5b2de28ecbc3aa658a2bbb97c7fa`  
		Last Modified: Fri, 23 Oct 2026 17:02:18 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:237f48fd6b8286edb7629514c6c2d5745ddef8dfd7474c1622a68bfa3c9715f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5901734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9161ddeeb5aa3c4a51d7616167b09293e208242c6d4058e995e9295b36dd34e4`

```dockerfile
```

-	Layers:
	-	`sha256:9f9453affc4eaa96d2a7ad3df3b8ce3821f33b6868750cfceec129448518c036`  
		Last Modified: Fri, 23 Oct 2026 17:02:13 GMT  
		Size: 5.9 MB (5858509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2659f2912149509998afceca2e88821788aa6a266aba0a9ea6e910f0c66ba388`  
		Last Modified: Fri, 23 Oct 2026 17:02:13 GMT  
		Size: 43.2 KB (43225 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:8262f498cb7a451ba64ebfa833343a0747c1196b2e8a4be7888a5d68fc1a20b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **557.0 MB (557045477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6307370d5557fb31c0c6a7b3eff85fab8245be174a459fed9f29e07279799e`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:58:17 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:58:17 GMT
ENV container oci
# Fri, 23 Oct 2026 07:58:18 GMT
COPY dir:5dfa310507da27398f8076c2456ffd2197b043828a75f962db7044d875161543 in /      
# Fri, 23 Oct 2026 07:58:18 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:58:18 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:58:19 GMT
COPY dir:245207855491c502875407ff924decd7477ce054eb0ef618bc047892ca9116ea in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:58:19 GMT
COPY dir:245207855491c502875407ff924decd7477ce054eb0ef618bc047892ca9116ea in /root/buildinfo/      
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:57:45Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:57:45Z" "architecture"="aarch64" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:57:45Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 16:51:28 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 23 Oct 2026 16:51:28 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:59:37 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 23 Oct 2026 16:59:37 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 23 Oct 2026 16:59:38 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Fri, 23 Oct 2026 16:59:38 GMT
RUN fc-cache -v # buildkit
# Fri, 23 Oct 2026 16:59:38 GMT
WORKDIR /usr/share/kibana
# Fri, 23 Oct 2026 16:59:38 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 23 Oct 2026 16:59:38 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 23 Oct 2026 16:59:38 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:59:38 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 23 Oct 2026 16:59:38 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 16:59:39 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 23 Oct 2026 16:59:40 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 23 Oct 2026 16:59:40 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 23 Oct 2026 16:59:40 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Fri, 23 Oct 2026 16:59:40 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Fri, 23 Oct 2026 16:59:40 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 23 Oct 2026 16:59:40 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 23 Oct 2026 16:59:40 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 23 Oct 2026 16:59:40 GMT
USER 1000
```

-	Layers:
	-	`sha256:6cb90586f16ba5f631bc69ed4b10258b9b651fbb54718f47b878a4abd17252cb`  
		Last Modified: Fri, 23 Oct 2026 09:53:00 GMT  
		Size: 38.7 MB (38714705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf4a6f4c1688acf0b8fcbf777dccf8901b6e4c2e9fbf4129dfb62735e91af52`  
		Last Modified: Fri, 23 Oct 2026 17:01:03 GMT  
		Size: 19.2 MB (19247693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926e2951233bf3bdd223ca9f0903780c9b27a2d1f625201847e5fd6c28ad8489`  
		Last Modified: Fri, 23 Oct 2026 17:01:20 GMT  
		Size: 482.5 MB (482526181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f17ebcce63cca14c7da8cb77590b8f96eefaaf8b7151b306ad46a183d40fd76`  
		Last Modified: Fri, 23 Oct 2026 17:01:02 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8103295ac532cadbba5de62dc99e36b6e26adad93f1c37dce2d6060780b6ca86`  
		Last Modified: Fri, 23 Oct 2026 17:01:03 GMT  
		Size: 16.5 MB (16460484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0c519c89a2f8bf6f290d7e99376987913455cd415f988b55bedaa91e1d2aa3`  
		Last Modified: Fri, 23 Oct 2026 17:01:04 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3854a325378193f138aec43bf690a83ed01e95d49df9e919bf5462253fdcd293`  
		Last Modified: Fri, 23 Oct 2026 17:01:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfed0e4dbf93708cff942e887649f1e0a605ee7634c74eb50736012313dfbad`  
		Last Modified: Fri, 23 Oct 2026 17:01:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aab1835172857419220e43dde1e149a4e8ba83b2f4608c7e8f9b0b7c9632a1b6`  
		Last Modified: Fri, 23 Oct 2026 17:01:05 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b2f539db60bca16f0653d34ea505e9eee4a2526800608308a960f99d25936c`  
		Last Modified: Fri, 23 Oct 2026 17:01:06 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84b3637626f9ff8444003ea3646def8360c11b2c9370d8975018a3445782e746`  
		Last Modified: Fri, 23 Oct 2026 17:01:07 GMT  
		Size: 73.5 KB (73450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e65c6747de9895a92b6dae1562456e987125eee4827047c5ebf6f2f11556d3`  
		Last Modified: Fri, 23 Oct 2026 17:01:07 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25321d63104ada057dce9c31ebe8fc052247eec9d0bf3e48f78ca5d4a0ab698c`  
		Last Modified: Fri, 23 Oct 2026 17:01:08 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:d0448567bcc6afc14802c8dad298c7fc369c80cfa43333918dc34080b6ebe99e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5898882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb216ef6ccef5333391a8ca71888f84f67f230e9ffa0f938cd5feae3646d1a23`

```dockerfile
```

-	Layers:
	-	`sha256:38f0bda756f9b81779fde25bba92261c30ed34cdafdb311d717cd16d22064f13`  
		Last Modified: Fri, 23 Oct 2026 17:01:02 GMT  
		Size: 5.9 MB (5855399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f22e108abc2885f14396e341801ab0a7c5bbbb21e7cc01f9717b4eea0413366f`  
		Last Modified: Fri, 23 Oct 2026 17:01:02 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.5`

```console
$ docker pull kibana@sha256:efaa230392c0a524ce2e06c003ad2620f2c2ffa0ec4d20791aa2d4884b7c4586
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.5` - linux; amd64

```console
$ docker pull kibana@sha256:4325a62f0818a185cf8bc704f6057d5296bd73cf28a66e5be9496d566c7c2f62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.2 MB (537173828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59bfaaeac672f49d5a5125bdc1cd3d739024f43f71354a5d9df49ba9a56f0550`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:55:55 GMT
ENV container oci
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:2fc4551098c6ebd5c0304b2f61efdc67d6aebcbff8032750054f600bbeec82fc in /      
# Fri, 23 Oct 2026 07:55:56 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:55:56 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:a78b034003bd0e620e960223059e9c224ee88be75273ffd75b7039efe65e4145 in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:a78b034003bd0e620e960223059e9c224ee88be75273ffd75b7039efe65e4145 in /root/buildinfo/      
# Fri, 23 Oct 2026 07:55:57 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:55:29Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:55:29Z" "architecture"="x86_64" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:55:29Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 16:51:17 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 23 Oct 2026 16:51:17 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:59:14 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 23 Oct 2026 16:59:14 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 23 Oct 2026 16:59:14 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Fri, 23 Oct 2026 16:59:15 GMT
RUN fc-cache -v # buildkit
# Fri, 23 Oct 2026 16:59:15 GMT
WORKDIR /usr/share/kibana
# Fri, 23 Oct 2026 16:59:15 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 23 Oct 2026 16:59:15 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 23 Oct 2026 16:59:15 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:59:15 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 23 Oct 2026 16:59:15 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 16:59:15 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 23 Oct 2026 16:59:16 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 23 Oct 2026 16:59:16 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 23 Oct 2026 16:59:16 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Fri, 23 Oct 2026 16:59:16 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Fri, 23 Oct 2026 16:59:16 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 23 Oct 2026 16:59:16 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 23 Oct 2026 16:59:16 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 23 Oct 2026 16:59:16 GMT
USER 1000
```

-	Layers:
	-	`sha256:74b09d47403b6e0522a8cc3fd6a898259e54bbaae0be6c397399bd41ee27d9c1`  
		Last Modified: Fri, 23 Oct 2026 09:52:32 GMT  
		Size: 40.6 MB (40609256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68da4feafcf21f44fe3c751b518b3161d952338cc73de206d40e3480c8ec9cd5`  
		Last Modified: Fri, 23 Oct 2026 17:00:25 GMT  
		Size: 19.3 MB (19305994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fe712932eea6c84cbf9c7f302d9a1e25f80be86b8049c0c213955c3cacfe083`  
		Last Modified: Fri, 23 Oct 2026 17:00:40 GMT  
		Size: 460.7 MB (460700068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b329a168beb41fdb09a67bf3f6e192738df3a3fd5aeb51829d6f180c7375ef0e`  
		Last Modified: Fri, 23 Oct 2026 17:00:23 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f42283cf013882225f2e6e5601d4b6ce07f4c5b0b02b01efb9b94f4ff6461a8d`  
		Last Modified: Fri, 23 Oct 2026 17:00:24 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02dcd48d31f51cc34c3abf7950736272a48a25313e4501957cc41288718fd39`  
		Last Modified: Fri, 23 Oct 2026 17:00:25 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3df834a26a0b18928898210a222986a8e3d6a22bb862f1a951d5438fdfee066`  
		Last Modified: Fri, 23 Oct 2026 17:00:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85aa4cb9568d1e317a56ece193cd24b3113f5921d5b22a29db280477a5f4e892`  
		Last Modified: Fri, 23 Oct 2026 17:00:27 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3cf582200992c54f2f6f457159af4aa213cd1f748b2265033b667c05dc09914`  
		Last Modified: Fri, 23 Oct 2026 17:00:27 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aeebadc165bf0e20349a88421c826f573a671bbf1d00e5bb2b36099586c56fe`  
		Last Modified: Fri, 23 Oct 2026 17:00:28 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1006bb9434d215b3b4bddc41a8a78f18074639cb8805192f54ad2f4a4d8c9b3c`  
		Last Modified: Fri, 23 Oct 2026 17:00:30 GMT  
		Size: 74.5 KB (74547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb9b9e72f2298e7751eb9ea6cb1066c37a1ffb910efb14ba04a8781e00e390d`  
		Last Modified: Fri, 23 Oct 2026 17:00:29 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3037715ad3dda0cf3851ed8891e2c0e06e79985c849d0f546cf696300abb69b2`  
		Last Modified: Fri, 23 Oct 2026 17:00:30 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:f2b6c18e10e645854e4ba564d7b2fc44c1a7093e09ee339d6746d6b5ad40b61d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6121799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc0e87ad422cf95a621fdbf4289bb471557c18df2c9b1a33618503fca76dfc8c`

```dockerfile
```

-	Layers:
	-	`sha256:9715d5a4dd369248e3dc082404c477b8e523e915d0c0bf9d0b398eadd52fd11f`  
		Last Modified: Fri, 23 Oct 2026 17:00:24 GMT  
		Size: 6.1 MB (6078574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87f530de1d2819da062aa07d0d33a72da14263a22903721dfe6ef4989e0af13d`  
		Last Modified: Fri, 23 Oct 2026 17:00:23 GMT  
		Size: 43.2 KB (43225 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.5` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:75dff6d8d8ff547c67779ff920a564ecbfbbdf3e73fbbd5045258e9cd6554102
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **548.7 MB (548683330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c9815f17c45e7cc8c14c23b87bb2b21a4740f701b0104db7f97625db22efffd`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:58:17 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:58:17 GMT
ENV container oci
# Fri, 23 Oct 2026 07:58:18 GMT
COPY dir:5dfa310507da27398f8076c2456ffd2197b043828a75f962db7044d875161543 in /      
# Fri, 23 Oct 2026 07:58:18 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:58:18 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:58:19 GMT
COPY dir:245207855491c502875407ff924decd7477ce054eb0ef618bc047892ca9116ea in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:58:19 GMT
COPY dir:245207855491c502875407ff924decd7477ce054eb0ef618bc047892ca9116ea in /root/buildinfo/      
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:57:45Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:57:45Z" "architecture"="aarch64" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:57:45Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 16:51:29 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 23 Oct 2026 16:51:29 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:58:13 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 23 Oct 2026 16:58:14 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 23 Oct 2026 16:58:14 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Fri, 23 Oct 2026 16:58:14 GMT
RUN fc-cache -v # buildkit
# Fri, 23 Oct 2026 16:58:14 GMT
WORKDIR /usr/share/kibana
# Fri, 23 Oct 2026 16:58:14 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 23 Oct 2026 16:58:14 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 23 Oct 2026 16:58:14 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:58:14 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 23 Oct 2026 16:58:14 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 16:58:15 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 23 Oct 2026 16:58:16 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 23 Oct 2026 16:58:16 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 23 Oct 2026 16:58:16 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Fri, 23 Oct 2026 16:58:16 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Fri, 23 Oct 2026 16:58:16 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 23 Oct 2026 16:58:16 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 23 Oct 2026 16:58:16 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 23 Oct 2026 16:58:16 GMT
USER 1000
```

-	Layers:
	-	`sha256:6cb90586f16ba5f631bc69ed4b10258b9b651fbb54718f47b878a4abd17252cb`  
		Last Modified: Fri, 23 Oct 2026 09:53:00 GMT  
		Size: 38.7 MB (38714705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4245eae775c1d17db979ee9f52390a470e3799dbe5f60d19a61c89ea8c806f38`  
		Last Modified: Fri, 23 Oct 2026 16:59:36 GMT  
		Size: 19.2 MB (19247744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758c51dcd5a744d5a09341462475c535e5e30fcc1a610a95384881bb73dcd4ce`  
		Last Modified: Fri, 23 Oct 2026 16:59:45 GMT  
		Size: 474.2 MB (474163910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dcc33b36798b99175e4ea72a8c81670605214bc1cf21efa1ace421884a49912`  
		Last Modified: Fri, 23 Oct 2026 16:59:35 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0518dd469a5cceb5abe4a286c1d73556fceca4337cb084448257cc1e268dc56a`  
		Last Modified: Fri, 23 Oct 2026 16:59:36 GMT  
		Size: 16.5 MB (16460483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2259e0662c062a793036142fa7601b50713313a5d63a718a85ce2e2dcdaf483`  
		Last Modified: Fri, 23 Oct 2026 16:59:36 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b91e1b4de565ad90c351b64a75f5de7a92eee02c8468a3167ce69e880464f1c3`  
		Last Modified: Fri, 23 Oct 2026 16:59:38 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98636a942bb003c3bcc9fc76e1d7057f13ab486e809e7b6e5261bf8c9bfd30c3`  
		Last Modified: Fri, 23 Oct 2026 16:59:38 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef2c36c43b84e2935f55edce4de6e405eddc3204d959c0f26d46f1b373c1fcd`  
		Last Modified: Fri, 23 Oct 2026 16:59:38 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67842eb374cb2a8c58f9912617bcbfdc76d57d80683c984cbc50944f1ff12490`  
		Last Modified: Fri, 23 Oct 2026 16:59:39 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3098cb5f41453d5d9e4caca6239564aa87cdebde22a030c4ce49ab77e1cb67ea`  
		Last Modified: Fri, 23 Oct 2026 16:59:39 GMT  
		Size: 73.5 KB (73452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae2e152dfab5d2e05f271c3c69c69c4fd04413d26881e743bdd07a79a6f6f379`  
		Last Modified: Fri, 23 Oct 2026 16:59:39 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:501cfa4388b27a59f98926ca3091156875b96eb4a313459102856a4d382f324f`  
		Last Modified: Fri, 23 Oct 2026 16:59:40 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:8555980c9b2f29240f80ddce229e907edbeb4e03f106a33cc25e73537473d3b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6118947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60618d9db9e888af5054d751615d87ef84937652254583347279d874c8d5c48f`

```dockerfile
```

-	Layers:
	-	`sha256:5af684f979f63c49cb212dac889935b2c9417584b54511265fef2ce47dc88714`  
		Last Modified: Fri, 23 Oct 2026 16:59:35 GMT  
		Size: 6.1 MB (6075464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4fd67d8bdf3c49039574d8827084bb42273d7499032aaca39dde789f3ff314e`  
		Last Modified: Fri, 23 Oct 2026 16:59:35 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
