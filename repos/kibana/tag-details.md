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
$ docker pull kibana@sha256:5ae6e24bdb3378b6b4d8f94f8e003b68bc5eb319a43b8cd51006b57aaf723825
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.8` - linux; amd64

```console
$ docker pull kibana@sha256:7d4cf77497ac761f11ff595901339293da5f84224ff27bb7a0279749d91c7fdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.6 MB (545597314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da0eaf0b65cf50f5b1e256b9bea51c4629f3b8c2a8df830014453b9447540164`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 26 Oct 2026 21:34:11 GMT
ENV container oci
# Mon, 26 Oct 2026 21:34:12 GMT
COPY dir:0bbd26efdf764fb2a803e39c5f9309efe9ad8dccb284af5b7fa3a1cebd98b694 in /      
# Mon, 26 Oct 2026 21:34:12 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 21:34:12 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 21:34:12 GMT
COPY dir:bccb91511254896ec73fa490978e787e07440fafd7ecf802fe25adcbef4f6383 in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 21:34:13 GMT
COPY dir:bccb91511254896ec73fa490978e787e07440fafd7ecf802fe25adcbef4f6383 in /root/buildinfo/      
# Mon, 26 Oct 2026 21:34:13 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T21:33:49Z" "org.opencontainers.image.revision"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "build-date"="2026-10-26T21:33:49Z" "architecture"="x86_64" "vcs-ref"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "vcs-type"="git" "release"="1793050346"org.opencontainers.image.created=2026-10-26T21:33:49Z,org.opencontainers.image.revision=8b3700629f01b12b6b7b939daabd7c1a5c7026bb
# Tue, 27 Oct 2026 17:44:19 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 27 Oct 2026 17:44:19 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 27 Oct 2026 17:54:26 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 27 Oct 2026 17:54:27 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 27 Oct 2026 17:54:27 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 27 Oct 2026 17:54:27 GMT
RUN fc-cache -v # buildkit
# Tue, 27 Oct 2026 17:54:27 GMT
WORKDIR /usr/share/kibana
# Tue, 27 Oct 2026 17:54:27 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 27 Oct 2026 17:54:27 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 27 Oct 2026 17:54:27 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:54:27 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 27 Oct 2026 17:54:27 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:54:28 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 27 Oct 2026 17:54:29 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 27 Oct 2026 17:54:29 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 27 Oct 2026 17:54:29 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 27 Oct 2026 17:54:29 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 27 Oct 2026 17:54:30 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 27 Oct 2026 17:54:30 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 27 Oct 2026 17:54:30 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 27 Oct 2026 17:54:30 GMT
USER 1000
```

-	Layers:
	-	`sha256:8f4a4ef7ec87af1eb84ab8382222fe461e965d7d1c9f8b34dd0890b7009a51bb`  
		Last Modified: Mon, 26 Oct 2026 23:50:49 GMT  
		Size: 40.7 MB (40654237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f303993273265eeded95d547f39124d301d5f9c1b45677ea8ccbbcdd1ad157`  
		Last Modified: Tue, 27 Oct 2026 17:55:47 GMT  
		Size: 19.3 MB (19311244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7634cfbff30dc6e4a6577484e0c092db844e48b486c2e1fa8dc6a2f6ef7508b3`  
		Last Modified: Tue, 27 Oct 2026 17:55:55 GMT  
		Size: 469.1 MB (469073388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f83e0821260dede98e8310186575a0dc7e8d46b3543733249603fd6c71bdb59`  
		Last Modified: Tue, 27 Oct 2026 17:55:46 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61647a4cf555967dac44a5c56fa841b04d58981785995f471e3d35fccb8a5c16`  
		Last Modified: Tue, 27 Oct 2026 17:55:47 GMT  
		Size: 16.5 MB (16460495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6008cdaa34de50bdffda6b75d5c306a581875a11cabba5aa716eed54a3c202b`  
		Last Modified: Tue, 27 Oct 2026 17:55:47 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:040a93c11ddbcf9b7e658f0b523418aabb1ee0897d763c33056c617e08d15a66`  
		Last Modified: Tue, 27 Oct 2026 17:55:48 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3490be3c0abf512e3aeaf8ad5859d948ce0554cce776a4637a5c0f55f91d94`  
		Last Modified: Tue, 27 Oct 2026 17:55:48 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd493a846bd6b199a3578bf58142fcecd10be42ed8c8cb3320a34e8aa44f104`  
		Last Modified: Tue, 27 Oct 2026 17:55:48 GMT  
		Size: 4.9 KB (4930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb814aaea95735f47a41e64361fdbf668676a7d812eee63ff118fe8b26b000d`  
		Last Modified: Tue, 27 Oct 2026 17:55:50 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8962c3ad83b74d459612b2d865eb8bd435568ef86c40b08d85174e691e55d0d`  
		Last Modified: Tue, 27 Oct 2026 17:55:50 GMT  
		Size: 74.5 KB (74549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da66a20fd380eaeac6fa83f15b058ecc355ef218b2b8a73a9f64fb1459cc0de9`  
		Last Modified: Tue, 27 Oct 2026 17:55:50 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc8b7e80cc5fe23743a12f40a1f664b7dfd95f2bda1a3348321141d9eb40fc6`  
		Last Modified: Tue, 27 Oct 2026 17:55:51 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:7cb3b5647a80821f7349a275a3dfce4bec6693a2e274d68fc290b12999790736
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5901751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17e2075c10312290b3b57aace1e31b4716774200e9b18aaebfdb450cdc435542`

```dockerfile
```

-	Layers:
	-	`sha256:3719596899c48c75251e88aef1399a3dee613b1df2dd42bd94676996add70e64`  
		Last Modified: Tue, 27 Oct 2026 17:55:46 GMT  
		Size: 5.9 MB (5858525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e05fbce456a47ab91eebc2e738266e429a45f0be2a6ed031b58b15901b4841a`  
		Last Modified: Tue, 27 Oct 2026 17:55:46 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:74bde4bf31c9dcfd797d791e894e7b495f7346cc83eb46c82a020714a8f5adaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **557.0 MB (557036334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de226ac47b020ff645457279db99dbc887bf7e3ab31890c807dd5f90ba0abd6`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 26 Oct 2026 21:35:43 GMT
ENV container oci
# Mon, 26 Oct 2026 21:35:44 GMT
COPY dir:4514a7c12566dae98fd88118fcb921951dfe1c5fb68bcd967fa7403f502ed7b3 in /      
# Mon, 26 Oct 2026 21:35:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 21:35:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 21:35:45 GMT
COPY dir:c38a861e2747d356888cd619d2f45be75d2e7b4ef861b9622c424d2044b8abe0 in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 21:35:45 GMT
COPY dir:c38a861e2747d356888cd619d2f45be75d2e7b4ef861b9622c424d2044b8abe0 in /root/buildinfo/      
# Mon, 26 Oct 2026 21:35:46 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T21:35:14Z" "org.opencontainers.image.revision"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "build-date"="2026-10-26T21:35:14Z" "architecture"="aarch64" "vcs-ref"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "vcs-type"="git" "release"="1793050346"org.opencontainers.image.created=2026-10-26T21:35:14Z,org.opencontainers.image.revision=8b3700629f01b12b6b7b939daabd7c1a5c7026bb
# Tue, 27 Oct 2026 17:40:50 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 27 Oct 2026 17:40:50 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 27 Oct 2026 17:49:05 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 27 Oct 2026 17:49:05 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 27 Oct 2026 17:49:06 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 27 Oct 2026 17:49:06 GMT
RUN fc-cache -v # buildkit
# Tue, 27 Oct 2026 17:49:06 GMT
WORKDIR /usr/share/kibana
# Tue, 27 Oct 2026 17:49:06 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 27 Oct 2026 17:49:06 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 27 Oct 2026 17:49:06 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:49:06 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 27 Oct 2026 17:49:06 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:49:07 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 27 Oct 2026 17:49:08 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 27 Oct 2026 17:49:08 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 27 Oct 2026 17:49:08 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 27 Oct 2026 17:49:08 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 27 Oct 2026 17:49:08 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 27 Oct 2026 17:49:08 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 27 Oct 2026 17:49:08 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 27 Oct 2026 17:49:08 GMT
USER 1000
```

-	Layers:
	-	`sha256:2b634c6fd82e08c6136245eb9edf17629696bc4de0436c0eaad35e2a1f3e8050`  
		Last Modified: Mon, 26 Oct 2026 23:50:49 GMT  
		Size: 38.7 MB (38703543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7918ec2cd7fc995e717e5fa1d21860197aead61f6b40775b08d7fd7af0436197`  
		Last Modified: Tue, 27 Oct 2026 17:50:29 GMT  
		Size: 19.3 MB (19251057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1959db43e3aa0e53a3af0c7edad5620c5fc45dd40d436145316bc6302c4012c0`  
		Last Modified: Tue, 27 Oct 2026 17:50:37 GMT  
		Size: 482.5 MB (482524829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1967baceeaea6740d948c4ca830ac2765948cdc3b3a81fe8d3df51a8c2d4bbc`  
		Last Modified: Tue, 27 Oct 2026 17:50:28 GMT  
		Size: 9.1 KB (9105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c0a88b86f82a27bc57e9f3b808ffdf08eeb6b425294e51a47fa76bf84b0783b`  
		Last Modified: Tue, 27 Oct 2026 17:50:29 GMT  
		Size: 16.5 MB (16460475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cfeab01ac50a9442c029ae671ba400d7653e4beb1d7b27a489ae8796ed5729`  
		Last Modified: Tue, 27 Oct 2026 17:50:29 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c5f1c359e175a7c5b88d3665ce6927517c49ac2c97d33109ce10d963348096`  
		Last Modified: Tue, 27 Oct 2026 17:50:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4f777155cffac089f2b37e9304c451bd2cf6e149cbe25b7a4fc6943cdc8827`  
		Last Modified: Tue, 27 Oct 2026 17:50:31 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a98bc1f8d97ce0c1c3eb1cc152e2c1d90c215ea3a84dd4d394ea3f7cc1a7938`  
		Last Modified: Tue, 27 Oct 2026 17:50:31 GMT  
		Size: 4.9 KB (4930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfd82289be36849714ef3a655bd4d1afd09433d296f1aabd5810bdbdac6663f8`  
		Last Modified: Tue, 27 Oct 2026 17:50:32 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0589a5e6d38ff766c5a499e524030828d2563d84eabe7eb86906532ce4874490`  
		Last Modified: Tue, 27 Oct 2026 17:50:32 GMT  
		Size: 73.5 KB (73450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13e9f108e3932ef68eb54ab5a3c7f2d218d57b1b3fc09a1dea700974cb901cbc`  
		Last Modified: Tue, 27 Oct 2026 17:50:32 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab74048e29541e5bba96359fa4241e89939c099e5c828d92eb8fba6720ed676c`  
		Last Modified: Tue, 27 Oct 2026 17:50:33 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:4b5806fe2a886885f94950a63e1075a35d903b073fffcfd1dfbefaa44f16ef3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5898898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e71f3f201f600a988a2bfd59018f0d8a672485ec7b4ef733df5f4b92a8ac358`

```dockerfile
```

-	Layers:
	-	`sha256:735b428171ab4f0c8d50915045cb9968c43ec7b11065b2c6404e5e0338497015`  
		Last Modified: Tue, 27 Oct 2026 17:50:28 GMT  
		Size: 5.9 MB (5855415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca9703a7e351ad7e3da072a834cd74e789788e6902afa50c12c9f6360e26920f`  
		Last Modified: Tue, 27 Oct 2026 17:50:28 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.5`

```console
$ docker pull kibana@sha256:27ebe58d1e6b47ddb4bb096f975e9bcf715fe8790d0de9da3d560eb97828316d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.5` - linux; amd64

```console
$ docker pull kibana@sha256:fea77a622a86414e41faf4627d57a4d570d6c37fa17aea531f77418047850db7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.2 MB (537227643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1903d7bbb2842a0eca2b3f92acb605df21684611ff478c44ebc95d1eba22a0e`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 26 Oct 2026 21:34:11 GMT
ENV container oci
# Mon, 26 Oct 2026 21:34:12 GMT
COPY dir:0bbd26efdf764fb2a803e39c5f9309efe9ad8dccb284af5b7fa3a1cebd98b694 in /      
# Mon, 26 Oct 2026 21:34:12 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 21:34:12 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 21:34:12 GMT
COPY dir:bccb91511254896ec73fa490978e787e07440fafd7ecf802fe25adcbef4f6383 in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 21:34:13 GMT
COPY dir:bccb91511254896ec73fa490978e787e07440fafd7ecf802fe25adcbef4f6383 in /root/buildinfo/      
# Mon, 26 Oct 2026 21:34:13 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T21:33:49Z" "org.opencontainers.image.revision"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "build-date"="2026-10-26T21:33:49Z" "architecture"="x86_64" "vcs-ref"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "vcs-type"="git" "release"="1793050346"org.opencontainers.image.created=2026-10-26T21:33:49Z,org.opencontainers.image.revision=8b3700629f01b12b6b7b939daabd7c1a5c7026bb
# Tue, 27 Oct 2026 17:44:19 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 27 Oct 2026 17:44:19 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 27 Oct 2026 17:52:43 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 27 Oct 2026 17:52:44 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 27 Oct 2026 17:52:44 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 27 Oct 2026 17:52:44 GMT
RUN fc-cache -v # buildkit
# Tue, 27 Oct 2026 17:52:44 GMT
WORKDIR /usr/share/kibana
# Tue, 27 Oct 2026 17:52:44 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 27 Oct 2026 17:52:44 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 27 Oct 2026 17:52:44 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:52:44 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 27 Oct 2026 17:52:44 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:52:45 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 27 Oct 2026 17:52:46 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 27 Oct 2026 17:52:46 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 27 Oct 2026 17:52:46 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 27 Oct 2026 17:52:46 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 27 Oct 2026 17:52:46 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 27 Oct 2026 17:52:46 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 27 Oct 2026 17:52:46 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 27 Oct 2026 17:52:46 GMT
USER 1000
```

-	Layers:
	-	`sha256:8f4a4ef7ec87af1eb84ab8382222fe461e965d7d1c9f8b34dd0890b7009a51bb`  
		Last Modified: Mon, 26 Oct 2026 23:50:49 GMT  
		Size: 40.7 MB (40654237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c676e06f8c7722b04348f7dd2b0a15dfcaacd8934ba21167e8fc4b2d6c898a`  
		Last Modified: Tue, 27 Oct 2026 17:53:58 GMT  
		Size: 19.3 MB (19311176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce45ce10f5852384a144592b57c43ba46d9d4210f5a4dc1ff9ae1e74b2be593d`  
		Last Modified: Tue, 27 Oct 2026 17:54:06 GMT  
		Size: 460.7 MB (460703713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3a36d7f01722745b866c366092769cbd4ed0eca3c71b225cd9f023dc3afcea`  
		Last Modified: Tue, 27 Oct 2026 17:53:56 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3b6e3ae4e0f406eb6dc7527fedb397f7c218f825fd3395012bc4de2432037d`  
		Last Modified: Tue, 27 Oct 2026 17:53:58 GMT  
		Size: 16.5 MB (16460487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecac71b450a84796768a94a4a114c568473f492a0aff799312c33bd37f4ed26b`  
		Last Modified: Tue, 27 Oct 2026 17:53:58 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e74614222d1f1105fb6a1c7d89550cb3240dfd5ae32878ca2dd83730bbe45fb`  
		Last Modified: Tue, 27 Oct 2026 17:53:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b8428f767e948b7b3d19d4a139584dacad113bf18dc32260c3279379df7ecf2`  
		Last Modified: Tue, 27 Oct 2026 17:53:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc8cc16386b2ed11484e670c93c1b39585bd305df3ebd2bcc8a30e899999649d`  
		Last Modified: Tue, 27 Oct 2026 17:53:59 GMT  
		Size: 5.0 KB (5007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e847abac4a3d60fd5fa30d51dd826b7eef8c53f3f3a870f027dc5ab0de0a50ab`  
		Last Modified: Tue, 27 Oct 2026 17:54:00 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10f75bf2a45cdefe0ed09ffe7b190c69a3e204f1c25b173c31a70d6f98b107e4`  
		Last Modified: Tue, 27 Oct 2026 17:54:00 GMT  
		Size: 74.5 KB (74547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9d9dab095b207cbd7722c78b84967a5fcbdbedb82fb94fc47fc4ba3a9044cf`  
		Last Modified: Tue, 27 Oct 2026 17:54:01 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d8c57331e1091406a671cf55fd3ab0087e7718f51a68671a3febae3ac10bad`  
		Last Modified: Tue, 27 Oct 2026 17:54:02 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:7380621e65febf0327dea3cc4b211d0dbd5dedb24883578d468450dcfe2b4242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6121815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f9795427b4489370d94d4f06a437a73c748a2ea018ebfb577531e4521d77df`

```dockerfile
```

-	Layers:
	-	`sha256:6700d451cba433a29a3b2ebf4340a4dc3ece31df15bb6d2b3771296c56ee8240`  
		Last Modified: Tue, 27 Oct 2026 17:53:57 GMT  
		Size: 6.1 MB (6078590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25480e2b88898068be5baacdac6932457adbc82b44bf1a96b22e2235ab84bffd`  
		Last Modified: Tue, 27 Oct 2026 17:53:56 GMT  
		Size: 43.2 KB (43225 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.5` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:bd0320e8e566e3763a0e3316a7f97c3770baec1384e4668a9796669c4a95b770
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **548.7 MB (548676934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d79ad29571e8512f82b6517afddb7f69e062f4e6bceaf66b1f4c8e0207069e31`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 26 Oct 2026 21:35:43 GMT
ENV container oci
# Mon, 26 Oct 2026 21:35:44 GMT
COPY dir:4514a7c12566dae98fd88118fcb921951dfe1c5fb68bcd967fa7403f502ed7b3 in /      
# Mon, 26 Oct 2026 21:35:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 21:35:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 21:35:45 GMT
COPY dir:c38a861e2747d356888cd619d2f45be75d2e7b4ef861b9622c424d2044b8abe0 in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 21:35:45 GMT
COPY dir:c38a861e2747d356888cd619d2f45be75d2e7b4ef861b9622c424d2044b8abe0 in /root/buildinfo/      
# Mon, 26 Oct 2026 21:35:46 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T21:35:14Z" "org.opencontainers.image.revision"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "build-date"="2026-10-26T21:35:14Z" "architecture"="aarch64" "vcs-ref"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "vcs-type"="git" "release"="1793050346"org.opencontainers.image.created=2026-10-26T21:35:14Z,org.opencontainers.image.revision=8b3700629f01b12b6b7b939daabd7c1a5c7026bb
# Tue, 27 Oct 2026 17:41:22 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 27 Oct 2026 17:41:22 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 27 Oct 2026 17:47:34 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 27 Oct 2026 17:47:34 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 27 Oct 2026 17:47:34 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 27 Oct 2026 17:47:34 GMT
RUN fc-cache -v # buildkit
# Tue, 27 Oct 2026 17:47:34 GMT
WORKDIR /usr/share/kibana
# Tue, 27 Oct 2026 17:47:34 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 27 Oct 2026 17:47:34 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 27 Oct 2026 17:47:34 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:47:35 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 27 Oct 2026 17:47:35 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 17:47:35 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 27 Oct 2026 17:47:36 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 27 Oct 2026 17:47:36 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 27 Oct 2026 17:47:36 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 27 Oct 2026 17:47:36 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 27 Oct 2026 17:47:36 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 27 Oct 2026 17:47:36 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 27 Oct 2026 17:47:36 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 27 Oct 2026 17:47:36 GMT
USER 1000
```

-	Layers:
	-	`sha256:2b634c6fd82e08c6136245eb9edf17629696bc4de0436c0eaad35e2a1f3e8050`  
		Last Modified: Mon, 26 Oct 2026 23:50:49 GMT  
		Size: 38.7 MB (38703543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e7d8be274ad8b1406ee731b76c65eccfc06a92a781b65860c9cccf305c7144`  
		Last Modified: Tue, 27 Oct 2026 17:48:53 GMT  
		Size: 19.3 MB (19250984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9dcefd0ff1b585b2dcdd563607313a0f90e9adf85249922144a621f0ca330f4`  
		Last Modified: Tue, 27 Oct 2026 17:49:00 GMT  
		Size: 474.2 MB (474165411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfdb4b5302f87c79042483c8c74a0df1c58bc09f4cdcb9cc2bfcd2a8b16c37a4`  
		Last Modified: Tue, 27 Oct 2026 17:48:51 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2f78ac73de259bcaf3366025101a37dcc179a0f2cc9791ac22ccaa9b4d99931`  
		Last Modified: Tue, 27 Oct 2026 17:48:52 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e27b0950d74b597c4ea3043e702e07c86bbc9763013ba19eb96d013d4ece91`  
		Last Modified: Tue, 27 Oct 2026 17:48:52 GMT  
		Size: 5.2 KB (5232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7000d59b2f8f17ba627e9252678038b674d401ab30346a2aba77558ef8cd1b17`  
		Last Modified: Tue, 27 Oct 2026 17:48:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e42cf71ece0106e598e380beb65ceb8a34d3b7f71cfe2ea1280d3ce4a8ad0b9`  
		Last Modified: Tue, 27 Oct 2026 17:48:54 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5e648878f62dc869dec3a5f6d65a273cbc2d659dd6318b8caf7b61152ba2b5`  
		Last Modified: Tue, 27 Oct 2026 17:48:54 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cf47ce4cad1f6650cbe85960b44e16e925c5f8db7223974289f71f01758302`  
		Last Modified: Tue, 27 Oct 2026 17:48:55 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8e2542d825a349258e9d618bbf5020a0070f18decb2be418989c5a1bf793ee`  
		Last Modified: Tue, 27 Oct 2026 17:48:55 GMT  
		Size: 73.5 KB (73455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523bbd8bd9fd28669bf17b345a65f84ec27bd67e8eb4317db698f5da1d234daa`  
		Last Modified: Tue, 27 Oct 2026 17:48:56 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab502e907628c3ae67f7c00cf34f8e3216f43e0803fd11c5201752f416df3de8`  
		Last Modified: Tue, 27 Oct 2026 17:48:56 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:33406d3d0dd61caf55319041d0b7d517fa4b0a3c5838bded02f5c34865c8240f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6118963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2444d52e36b481d16c4e396f2603f644ade175e64bc46a849f74a03157e792bd`

```dockerfile
```

-	Layers:
	-	`sha256:708fc645bcaf1809513250822be6855693e1059f1b0558cadafb1a5104fc87a7`  
		Last Modified: Tue, 27 Oct 2026 17:48:52 GMT  
		Size: 6.1 MB (6075480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fe158289e7cc0980447fdb8748e8f56bc61530076ce821705ca89b8e711cc68`  
		Last Modified: Tue, 27 Oct 2026 17:48:51 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
