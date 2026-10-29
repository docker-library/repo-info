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
$ docker pull kibana@sha256:709652e92b122a1054de146fbb43ccbbb097e99954c02fa28c0050ebcc0e323e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.8` - linux; amd64

```console
$ docker pull kibana@sha256:1b39ce6b9fce4728a59978f268f640b8a45754e5f4317b5be65a725fd4ef0373
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.6 MB (545593405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfd48e307218cf5871b9536f70bd3d0fbcb9afa1b69c228e32dcb189104b064a`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.openshift.expose-services=""
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 29 Oct 2026 05:54:23 GMT
ENV container oci
# Thu, 29 Oct 2026 05:54:23 GMT
COPY dir:cb36e4a04f700577f4d44e5ef8e97fee2e20c96c2328537ddf72d477ad63850e in /      
# Thu, 29 Oct 2026 05:54:24 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 29 Oct 2026 05:54:24 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 05:54:24 GMT
COPY dir:6f787a22ee9c86f2977e5bc3d8b8487c5e75e12cf005c8de8336495493a703c0 in /usr/share/buildinfo/      
# Thu, 29 Oct 2026 05:54:24 GMT
COPY dir:6f787a22ee9c86f2977e5bc3d8b8487c5e75e12cf005c8de8336495493a703c0 in /root/buildinfo/      
# Thu, 29 Oct 2026 05:54:24 GMT
LABEL "org.opencontainers.image.created"="2026-10-29T05:53:50Z" "org.opencontainers.image.revision"="9eac53daf60c61895dd274c7017f0605f411e146" "build-date"="2026-10-29T05:53:50Z" "architecture"="x86_64" "vcs-ref"="9eac53daf60c61895dd274c7017f0605f411e146" "vcs-type"="git" "release"="1793253163"org.opencontainers.image.created=2026-10-29T05:53:50Z,org.opencontainers.image.revision=9eac53daf60c61895dd274c7017f0605f411e146
# Thu, 29 Oct 2026 18:57:29 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 29 Oct 2026 18:57:29 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Thu, 29 Oct 2026 19:07:30 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 29 Oct 2026 19:07:30 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 29 Oct 2026 19:07:30 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 29 Oct 2026 19:07:31 GMT
RUN fc-cache -v # buildkit
# Thu, 29 Oct 2026 19:07:31 GMT
WORKDIR /usr/share/kibana
# Thu, 29 Oct 2026 19:07:31 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 29 Oct 2026 19:07:31 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 29 Oct 2026 19:07:31 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:07:31 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 29 Oct 2026 19:07:31 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 19:07:32 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 29 Oct 2026 19:07:33 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 29 Oct 2026 19:07:33 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 29 Oct 2026 19:07:33 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Thu, 29 Oct 2026 19:07:33 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Thu, 29 Oct 2026 19:07:33 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 29 Oct 2026 19:07:33 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 29 Oct 2026 19:07:33 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 29 Oct 2026 19:07:33 GMT
USER 1000
```

-	Layers:
	-	`sha256:2164d2820af90f29766403e395ab877c03c4ae5dd020d8a1180c2bdb12e89bf2`  
		Last Modified: Thu, 29 Oct 2026 06:37:49 GMT  
		Size: 40.7 MB (40656045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ca97f8f8e75eb2b91f9dceb65e61cdfdeb169b005b001226b467dbd05f3be9b`  
		Last Modified: Thu, 29 Oct 2026 19:08:46 GMT  
		Size: 19.3 MB (19309908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6489eccc30fcd80c2ef04871f0685ea7192ecb743031a79e3c7bc930f9b9cc75`  
		Last Modified: Thu, 29 Oct 2026 19:08:54 GMT  
		Size: 469.1 MB (469069025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd462bb2e0dddf0c19bd186cfb78df5ac0d5c4e404f2682febd0568463150912`  
		Last Modified: Thu, 29 Oct 2026 19:08:45 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd32b16315e23b8cc30e3ab8b0ddfef32f698a1f7c6e08da90d268dffe132cc`  
		Last Modified: Thu, 29 Oct 2026 19:08:46 GMT  
		Size: 16.5 MB (16460492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c00119d535efe246b54ff1c515b88431985ac3956b44b3df5e889fca0a5f1f`  
		Last Modified: Thu, 29 Oct 2026 19:08:46 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7c88546772ebd906f1669c38aaf96dc4feba86a1785635217be0f0192d9a154`  
		Last Modified: Thu, 29 Oct 2026 19:08:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964e6f358d00675fa9ca5fdf9c494b3f6bc67ef114e31c90a1f024b817684520`  
		Last Modified: Thu, 29 Oct 2026 19:08:48 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94f4d4a08ea4618f04a07000dbc7dd0caa814aad7024cff8cec543a8597457a4`  
		Last Modified: Thu, 29 Oct 2026 19:08:48 GMT  
		Size: 4.9 KB (4927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade2072c9ec98cc84909599b15943c945ead8743b4fdb2b1b4bb0202d31b5b40`  
		Last Modified: Thu, 29 Oct 2026 19:08:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82dba2fbd7ca5c36fee2a3840c049f65e84a530e528946011f3a2e732d0487eb`  
		Last Modified: Thu, 29 Oct 2026 19:08:49 GMT  
		Size: 74.5 KB (74547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4659784ab510346c285f0a763f9e976531c3ff2e62cef7a9bf0fa032b483120a`  
		Last Modified: Thu, 29 Oct 2026 19:08:49 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f5270d4f0837e8d13b00f158ab1d1477268db1351b92f135dca66e7393458a`  
		Last Modified: Thu, 29 Oct 2026 19:08:50 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:8c49a432ffca06bfadc695bc514f4b31de4dcb003232477462a1b7b5f7bf3870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5901759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a1d0cace62416d5951c03a00ab8a88a70e86bf9ae8b8ddb687d71db241b709`

```dockerfile
```

-	Layers:
	-	`sha256:cb15b96a1d6c62aa1ad692838ccf2f7dcf1640c8652cb48f4ed12b0907a34983`  
		Last Modified: Thu, 29 Oct 2026 19:08:45 GMT  
		Size: 5.9 MB (5858533 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f01dc8d9acb7e99e9ccfcce82f65c60382c3dc860aca473dc7373d057a1efb5`  
		Last Modified: Thu, 29 Oct 2026 19:08:45 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:4e3707eca68c5bef29273a58db4e27daf089dc27bb0a9827b84f65d632f00af1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **557.0 MB (557047427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27a8b7b4b2abfe5a8fe08d562098a6ebd99abd6f1f180500bec48c8662849491`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.openshift.expose-services=""
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 29 Oct 2026 05:55:50 GMT
ENV container oci
# Thu, 29 Oct 2026 05:55:51 GMT
COPY dir:c2f7b4c82de3b29a784fee39f42a89d24dcfb89cdf321a56be39c3db78376c0a in /      
# Thu, 29 Oct 2026 05:55:52 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 29 Oct 2026 05:55:52 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 05:55:52 GMT
COPY dir:d5c8eb0f62c97002675f9b845c311f4fc41098098fd604bd72c8226e9fea1734 in /usr/share/buildinfo/      
# Thu, 29 Oct 2026 05:55:52 GMT
COPY dir:d5c8eb0f62c97002675f9b845c311f4fc41098098fd604bd72c8226e9fea1734 in /root/buildinfo/      
# Thu, 29 Oct 2026 05:55:53 GMT
LABEL "org.opencontainers.image.created"="2026-10-29T05:55:19Z" "org.opencontainers.image.revision"="9eac53daf60c61895dd274c7017f0605f411e146" "build-date"="2026-10-29T05:55:19Z" "architecture"="aarch64" "vcs-ref"="9eac53daf60c61895dd274c7017f0605f411e146" "vcs-type"="git" "release"="1793253163"org.opencontainers.image.created=2026-10-29T05:55:19Z,org.opencontainers.image.revision=9eac53daf60c61895dd274c7017f0605f411e146
# Thu, 29 Oct 2026 18:56:10 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 29 Oct 2026 18:56:10 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Thu, 29 Oct 2026 19:04:19 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 29 Oct 2026 19:04:20 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 29 Oct 2026 19:04:20 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 29 Oct 2026 19:04:20 GMT
RUN fc-cache -v # buildkit
# Thu, 29 Oct 2026 19:04:20 GMT
WORKDIR /usr/share/kibana
# Thu, 29 Oct 2026 19:04:20 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 29 Oct 2026 19:04:20 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 29 Oct 2026 19:04:20 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:04:20 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 29 Oct 2026 19:04:20 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 19:04:21 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 29 Oct 2026 19:04:22 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 29 Oct 2026 19:04:22 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 29 Oct 2026 19:04:22 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Thu, 29 Oct 2026 19:04:22 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Thu, 29 Oct 2026 19:04:22 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 29 Oct 2026 19:04:22 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 29 Oct 2026 19:04:22 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 29 Oct 2026 19:04:22 GMT
USER 1000
```

-	Layers:
	-	`sha256:d1fd8731fe293042fa0b8c35e7a013605e676c89fdf9067f0f919ee6053921e5`  
		Last Modified: Thu, 29 Oct 2026 06:37:51 GMT  
		Size: 38.7 MB (38719163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63e8524c6247ccf4a899c162d4159632187bd3f62b308abc6bd92ec7cf40219`  
		Last Modified: Thu, 29 Oct 2026 19:05:45 GMT  
		Size: 19.3 MB (19251212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eaafb3bcb96d1c8a7b99a7ad96398a2704b2e55b3d671efc0004612303f2495`  
		Last Modified: Thu, 29 Oct 2026 19:05:52 GMT  
		Size: 482.5 MB (482520149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ce3b9ed6bb38532e205dddc888ce80adf91b8b3be4533926b31520f70ba3b3`  
		Last Modified: Thu, 29 Oct 2026 19:05:43 GMT  
		Size: 9.1 KB (9098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a4cc6744a15788c6a66b5776a7316d58aa39921958a72e35a31319f5c132827`  
		Last Modified: Thu, 29 Oct 2026 19:05:44 GMT  
		Size: 16.5 MB (16460486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12da5ffa26eb580ae7018c68233037b4f1bc030c512bb8821b4829190001bd10`  
		Last Modified: Thu, 29 Oct 2026 19:05:45 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2dfe67f21f4d6ec07882858b87b4876b296e075038c0da455999b94a5ebb685`  
		Last Modified: Thu, 29 Oct 2026 19:05:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d1f2eaa452ea5c3300f34f027eda78815c61cbd80a71825c2c4322b39421876`  
		Last Modified: Thu, 29 Oct 2026 19:05:46 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aa1de18af03d39f5b161706c7cbfa6fa9d9aba832a1618a3bcaec3db786b8a4`  
		Last Modified: Thu, 29 Oct 2026 19:05:46 GMT  
		Size: 4.9 KB (4927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30fb989ae3829c7f6565e8efcf203d2f89cec9b2be5eece13c1035ff0814d122`  
		Last Modified: Thu, 29 Oct 2026 19:05:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657554e63791845b40c4d2d8bcf79ebfe0679942096b3efe36fe5ee429ad9e4d`  
		Last Modified: Thu, 29 Oct 2026 19:05:48 GMT  
		Size: 73.5 KB (73455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de41e5fb9eb8b810c59369a1095c78522a2e99d65a9f2039728c6c1b61170b6c`  
		Last Modified: Thu, 29 Oct 2026 19:05:47 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0fb1ed0ec5afa35fc6ebced79ce08e5525ec6f2eae7411d9e50ad1c866d1f01`  
		Last Modified: Thu, 29 Oct 2026 19:05:49 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:0918a9305b4b760e1eed4cd65dbf6d2d852918624c0fb7602fe2d3e3a9c31de1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5898906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5176f18806b5974ba28850a83dd4406e515f7241e128d093746013e6d4aa25a`

```dockerfile
```

-	Layers:
	-	`sha256:473850074dd3f10215ed721ec26f0d7990951c330dcc56f7f40ff8677e2e4b1f`  
		Last Modified: Thu, 29 Oct 2026 19:05:44 GMT  
		Size: 5.9 MB (5855423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca8e72ac51d730dfc6c50d696b6c08acb045ec76a419678e801a1d85676292f4`  
		Last Modified: Thu, 29 Oct 2026 19:05:43 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.5`

```console
$ docker pull kibana@sha256:9ce8cb1f9ed97f1e8d66f89c489369030028beb11472707714242d050eefa697
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.5` - linux; amd64

```console
$ docker pull kibana@sha256:5e74f1350f4fd04b282bb56944bebdbcddaebf4127435f6d1d780d0a83f47106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.2 MB (537231570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa2377b292b0b73eb73600adf060e7b4bcbadc88fb33d58a9982a1391cb8549e`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.openshift.expose-services=""
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 29 Oct 2026 05:54:23 GMT
ENV container oci
# Thu, 29 Oct 2026 05:54:23 GMT
COPY dir:cb36e4a04f700577f4d44e5ef8e97fee2e20c96c2328537ddf72d477ad63850e in /      
# Thu, 29 Oct 2026 05:54:24 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 29 Oct 2026 05:54:24 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 05:54:24 GMT
COPY dir:6f787a22ee9c86f2977e5bc3d8b8487c5e75e12cf005c8de8336495493a703c0 in /usr/share/buildinfo/      
# Thu, 29 Oct 2026 05:54:24 GMT
COPY dir:6f787a22ee9c86f2977e5bc3d8b8487c5e75e12cf005c8de8336495493a703c0 in /root/buildinfo/      
# Thu, 29 Oct 2026 05:54:24 GMT
LABEL "org.opencontainers.image.created"="2026-10-29T05:53:50Z" "org.opencontainers.image.revision"="9eac53daf60c61895dd274c7017f0605f411e146" "build-date"="2026-10-29T05:53:50Z" "architecture"="x86_64" "vcs-ref"="9eac53daf60c61895dd274c7017f0605f411e146" "vcs-type"="git" "release"="1793253163"org.opencontainers.image.created=2026-10-29T05:53:50Z,org.opencontainers.image.revision=9eac53daf60c61895dd274c7017f0605f411e146
# Thu, 29 Oct 2026 18:57:30 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 29 Oct 2026 18:57:30 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Thu, 29 Oct 2026 19:05:53 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 29 Oct 2026 19:05:54 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 29 Oct 2026 19:05:54 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 29 Oct 2026 19:05:54 GMT
RUN fc-cache -v # buildkit
# Thu, 29 Oct 2026 19:05:54 GMT
WORKDIR /usr/share/kibana
# Thu, 29 Oct 2026 19:05:54 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 29 Oct 2026 19:05:54 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 29 Oct 2026 19:05:54 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:05:54 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 29 Oct 2026 19:05:54 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 19:05:55 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 29 Oct 2026 19:05:56 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 29 Oct 2026 19:05:56 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 29 Oct 2026 19:05:56 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Thu, 29 Oct 2026 19:05:56 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Thu, 29 Oct 2026 19:05:56 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 29 Oct 2026 19:05:56 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 29 Oct 2026 19:05:56 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 29 Oct 2026 19:05:56 GMT
USER 1000
```

-	Layers:
	-	`sha256:2164d2820af90f29766403e395ab877c03c4ae5dd020d8a1180c2bdb12e89bf2`  
		Last Modified: Thu, 29 Oct 2026 06:37:49 GMT  
		Size: 40.7 MB (40656045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9314c41cd949b104f32725dccef57d2a14db0eac8610acfc3b3c79f50424c48b`  
		Last Modified: Thu, 29 Oct 2026 19:07:10 GMT  
		Size: 19.3 MB (19309957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:351af9284092ed165d75eeb6495605a37f736de530919e7fa63e91627100a05b`  
		Last Modified: Thu, 29 Oct 2026 19:07:18 GMT  
		Size: 460.7 MB (460707059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d692be7ea8a7340168478cc389b2e5fc64ee35ffc3daa42354e7c48236fda33`  
		Last Modified: Thu, 29 Oct 2026 19:07:09 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e9f7d6628e4ef6cacb0122e7d75b70153eb5280fdd7c1e3038f9bc69cc38fb5`  
		Last Modified: Thu, 29 Oct 2026 19:07:10 GMT  
		Size: 16.5 MB (16460486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16474981f5f8f72f7f1a182dd4bb914f40a955d12cc76d9b4cd4d98c4e8cc1b0`  
		Last Modified: Thu, 29 Oct 2026 19:07:11 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632ebc7394734a80fc040d80afe5cd0cd7e094508f6599efbf67c359bf0154de`  
		Last Modified: Thu, 29 Oct 2026 19:07:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7a512585353af5b3d3179c0a2131c345508022a113e5daf0bbbcd6d6e2a3060`  
		Last Modified: Thu, 29 Oct 2026 19:07:12 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d9ab63721a53f074cb3feae668f7d3ea4c173f6a32deafb4e964bb7487b389`  
		Last Modified: Thu, 29 Oct 2026 19:07:12 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f74ad8088c30d76f47726fb001cd45fed4a9990f4d0639be9ab09958a339495`  
		Last Modified: Thu, 29 Oct 2026 19:07:13 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86d40327b1a8858c2a474aa16c88bc87970c04a9635612b9e1a5e77fffd1e7b`  
		Last Modified: Thu, 29 Oct 2026 19:07:13 GMT  
		Size: 74.5 KB (74547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a88b167d597ce3598bf3f84807f24299b61a4ad6dd4bcd14d8fd30539c385aa`  
		Last Modified: Thu, 29 Oct 2026 19:07:13 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82dfc9097e4bfabe526f608b74d4c7ff0dec5cca07a6efcc97c46e7a54471dad`  
		Last Modified: Thu, 29 Oct 2026 19:07:14 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:e56d06120a0c78be47c55892a0844e98597994999d996cfd9c86066abf2c2ff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6121824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d20bc50d56e2f2ed017f64f4bd1c6c3909bf37ae0e73f62813ef7ebeb788e105`

```dockerfile
```

-	Layers:
	-	`sha256:1393314627d38a7d02298f31436a992ea8d914b472c1ea1cda125933b11a4dda`  
		Last Modified: Thu, 29 Oct 2026 19:07:10 GMT  
		Size: 6.1 MB (6078598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4932a7a42df885519e456555ef774b64e2890923f6ff67ea07bf5dd84af143c`  
		Last Modified: Thu, 29 Oct 2026 19:07:09 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.5` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:6d727533f4265ef9142df9b45dcfb4a5c9dae14a4df86e660b0f327e8fed56d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **548.7 MB (548686439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4524fc6647e4253d79355c2a2919031e2b8ce64e92c365e0af84957ac9d5bc61`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.openshift.expose-services=""
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 29 Oct 2026 05:55:50 GMT
ENV container oci
# Thu, 29 Oct 2026 05:55:51 GMT
COPY dir:c2f7b4c82de3b29a784fee39f42a89d24dcfb89cdf321a56be39c3db78376c0a in /      
# Thu, 29 Oct 2026 05:55:52 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 29 Oct 2026 05:55:52 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 05:55:52 GMT
COPY dir:d5c8eb0f62c97002675f9b845c311f4fc41098098fd604bd72c8226e9fea1734 in /usr/share/buildinfo/      
# Thu, 29 Oct 2026 05:55:52 GMT
COPY dir:d5c8eb0f62c97002675f9b845c311f4fc41098098fd604bd72c8226e9fea1734 in /root/buildinfo/      
# Thu, 29 Oct 2026 05:55:53 GMT
LABEL "org.opencontainers.image.created"="2026-10-29T05:55:19Z" "org.opencontainers.image.revision"="9eac53daf60c61895dd274c7017f0605f411e146" "build-date"="2026-10-29T05:55:19Z" "architecture"="aarch64" "vcs-ref"="9eac53daf60c61895dd274c7017f0605f411e146" "vcs-type"="git" "release"="1793253163"org.opencontainers.image.created=2026-10-29T05:55:19Z,org.opencontainers.image.revision=9eac53daf60c61895dd274c7017f0605f411e146
# Thu, 29 Oct 2026 18:56:20 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 29 Oct 2026 18:56:20 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Thu, 29 Oct 2026 19:03:09 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 29 Oct 2026 19:03:10 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 29 Oct 2026 19:03:10 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 29 Oct 2026 19:03:10 GMT
RUN fc-cache -v # buildkit
# Thu, 29 Oct 2026 19:03:10 GMT
WORKDIR /usr/share/kibana
# Thu, 29 Oct 2026 19:03:10 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 29 Oct 2026 19:03:10 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 29 Oct 2026 19:03:10 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:03:10 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 29 Oct 2026 19:03:10 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 19:03:11 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 29 Oct 2026 19:03:12 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 29 Oct 2026 19:03:12 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 29 Oct 2026 19:03:12 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Thu, 29 Oct 2026 19:03:12 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Thu, 29 Oct 2026 19:03:12 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 29 Oct 2026 19:03:12 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 29 Oct 2026 19:03:12 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 29 Oct 2026 19:03:12 GMT
USER 1000
```

-	Layers:
	-	`sha256:d1fd8731fe293042fa0b8c35e7a013605e676c89fdf9067f0f919ee6053921e5`  
		Last Modified: Thu, 29 Oct 2026 06:37:51 GMT  
		Size: 38.7 MB (38719163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f0ab2d2dbc7c60bdbe51f267bdbd59bc0c828cec39c132c348f8e1467f389a7`  
		Last Modified: Thu, 29 Oct 2026 19:04:29 GMT  
		Size: 19.3 MB (19251105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e01d3914a3ef570bb8c57920c2551562a43b4a62c07e951611e53d16c1999cb`  
		Last Modified: Thu, 29 Oct 2026 19:04:38 GMT  
		Size: 474.2 MB (474159186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b162eb5b82d14381d0f9d5839c2f436f9a134dc487630fdaacaffb3c2b48fa90`  
		Last Modified: Thu, 29 Oct 2026 19:04:28 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:132d262c0fdb220496640ff08531efa94c618d4325f7f6a49b9cc64bd9bf56e6`  
		Last Modified: Thu, 29 Oct 2026 19:04:30 GMT  
		Size: 16.5 MB (16460493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d49a3075a9d9edf1e40d7380d8d18c0c4e2729365934ea859cb1d9f228ebbf`  
		Last Modified: Thu, 29 Oct 2026 19:04:30 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e4dd934c4da563b3c6a25ab68543f828083d36ede600debeecee55090162e81`  
		Last Modified: Thu, 29 Oct 2026 19:04:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a18a4385959c894f3900c86704175c8957de1eeb965778aecea3e771bfbe2622`  
		Last Modified: Thu, 29 Oct 2026 19:04:31 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d902143269782287a192cb865acbacb762a34458a220600c6af68b41d8c2ee`  
		Last Modified: Thu, 29 Oct 2026 19:04:31 GMT  
		Size: 5.0 KB (5000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4153f8ff002e7a20c2fa64c21f97940c73b4d4cec636813b9530bb2bb64565c3`  
		Last Modified: Thu, 29 Oct 2026 19:04:32 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2488b55c2caba1e022c65015c10f94ef4c35a3ac4c0f03cd97bc19eb3c910b`  
		Last Modified: Thu, 29 Oct 2026 19:04:33 GMT  
		Size: 73.5 KB (73454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b33d7d6668cf5a1a16f733973a661f045a29a20a674c98141017ab7ae8ea10`  
		Last Modified: Thu, 29 Oct 2026 19:04:33 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f931ce4c398e46a5b00cdd966b68188c60b1d3744c5a2ea5bf33d7a874c6cfa`  
		Last Modified: Thu, 29 Oct 2026 19:04:33 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:4a027fc08bc834af5f7f188fa21fad6e9e792069963ddd417e9e073816229565
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6118971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5849e4fbaa885e33d0568ef4e14ff21e94818b44f3254f1396611fb5a954dd4d`

```dockerfile
```

-	Layers:
	-	`sha256:98169364606814aa8a15c0fcfca7975a395b7d5f80e5745893250736c147fcee`  
		Last Modified: Thu, 29 Oct 2026 19:04:29 GMT  
		Size: 6.1 MB (6075488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68227de74e5d87290e2cd1f97c4fe6c4db11c78c37a8baa0903b8b08d40627b3`  
		Last Modified: Thu, 29 Oct 2026 19:04:28 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
