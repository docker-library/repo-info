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
$ docker pull kibana@sha256:1f2d223ca55a319a90becc03598f9b6cfe5b664b1ff99aaf8eecca33c229f58a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.8` - linux; amd64

```console
$ docker pull kibana@sha256:5ce453f5758d7d052c61529857d7c8adf9eaf30e9173a66715e15b84fa554520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.6 MB (545602490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e038f5536d5c4ff95c4e12b4a49f1b4d37fc3b51b887fe5265257ac06ab7bd46`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:24:06 GMT
ENV container oci
# Mon, 02 Nov 2026 00:24:06 GMT
COPY dir:cf1fefd4be4ce5fd82fa07ab19c9ebc91b7a3b97c257e48429ad961fafad7a2a in /      
# Mon, 02 Nov 2026 00:24:07 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:24:07 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:24:07 GMT
COPY dir:b80413ac409186f827c6d9af3ec402d8af6bb4a454f39ae79bbc5c2a9f19635c in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:24:07 GMT
COPY dir:b80413ac409186f827c6d9af3ec402d8af6bb4a454f39ae79bbc5c2a9f19635c in /root/buildinfo/      
# Mon, 02 Nov 2026 00:24:07 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:23:43Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:23:43Z" "architecture"="x86_64" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:23:43Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 00:55:57 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 03 Nov 2026 00:55:57 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 03 Nov 2026 01:05:46 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 03 Nov 2026 01:05:47 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 03 Nov 2026 01:05:47 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 03 Nov 2026 01:05:47 GMT
RUN fc-cache -v # buildkit
# Tue, 03 Nov 2026 01:05:47 GMT
WORKDIR /usr/share/kibana
# Tue, 03 Nov 2026 01:05:47 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 03 Nov 2026 01:05:47 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 03 Nov 2026 01:05:47 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:05:47 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 03 Nov 2026 01:05:47 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 01:05:48 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 03 Nov 2026 01:05:49 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 03 Nov 2026 01:05:49 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 03 Nov 2026 01:05:49 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 03 Nov 2026 01:05:49 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 03 Nov 2026 01:05:49 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 03 Nov 2026 01:05:49 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 03 Nov 2026 01:05:49 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 03 Nov 2026 01:05:49 GMT
USER 1000
```

-	Layers:
	-	`sha256:0811bc98b695d75fb388d477ae3bfd11d656060625574fd2cff4fde9fbb28941`  
		Last Modified: Mon, 02 Nov 2026 01:16:09 GMT  
		Size: 40.7 MB (40656388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf8eee09bdfa02543e7620bd21d8d0e0ff41d9dcd7283add674ac772fbfca120`  
		Last Modified: Tue, 03 Nov 2026 01:07:04 GMT  
		Size: 19.3 MB (19314284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff1af1b1eb573d6f8dd9690e59ebb496ef729371651378e91d72f65315b6235`  
		Last Modified: Tue, 03 Nov 2026 01:07:13 GMT  
		Size: 469.1 MB (469073409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d08bebc3c1e9454945da67acdd0106e070fcf01f08f5d824de2d5068c3dc61`  
		Last Modified: Tue, 03 Nov 2026 01:07:03 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dbf41894b7a69a400854197f5b094caa1c2af4a75d7e3b811db5575e83384e9`  
		Last Modified: Tue, 03 Nov 2026 01:07:04 GMT  
		Size: 16.5 MB (16460477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a235e1e30e1d18635c69e34f03c1a8a1a221b4f88326db91e9198b229856b4f6`  
		Last Modified: Tue, 03 Nov 2026 01:07:05 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55241b85eebb725b2b43f3e807d6b870dac7657c7da1a048584d9071768880ce`  
		Last Modified: Tue, 03 Nov 2026 01:07:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d6ee22e8e01fa54f0a1507a176b8e0ea95f9d3dfd0f404d79e2dc3e07506fa0`  
		Last Modified: Tue, 03 Nov 2026 01:07:06 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb06dba552e2cebfaedb7ea799b1fdc9f6e693c0ecdafa1fd568fa79ebfb914b`  
		Last Modified: Tue, 03 Nov 2026 01:07:06 GMT  
		Size: 4.9 KB (4929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28eb21a784499e151e8fb14c7c3c16a581634d7d7201058b21b0ced5af35bb06`  
		Last Modified: Tue, 03 Nov 2026 01:07:07 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09851df2877ccf123da9083fa9b39931c333e342209654b8d15a84a499bbd9b7`  
		Last Modified: Tue, 03 Nov 2026 01:07:07 GMT  
		Size: 74.5 KB (74549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f8ffda5e3c52fd76a0b205a4c3b69eeecce1211a6d314e3cae5e11f9514a5c3`  
		Last Modified: Tue, 03 Nov 2026 01:07:07 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e62b1637028a5c6a05283674a96d829b989c5ed362be1c69d266d9245c3f385`  
		Last Modified: Tue, 03 Nov 2026 01:07:08 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:02e1b5c8c47666355524fa7a41e1b8031a75e34c8206b6b41eaad0c849543f50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5901759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5f122b0b440727e1316d9ba0dc93f47eefcb61adf572a5d0eacf6535fb7de50`

```dockerfile
```

-	Layers:
	-	`sha256:280f784b9fc65e006e808ddb825b1394b9f28bd803b2ae117fc83e64b8c1c5a6`  
		Last Modified: Tue, 03 Nov 2026 01:07:04 GMT  
		Size: 5.9 MB (5858533 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac5886ac867332ead46964948ae09285159c22c4f1c0b55ca0f6d20092ba0b1c`  
		Last Modified: Tue, 03 Nov 2026 01:07:03 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:d078d3d86979a7759507e384a9e49f373856c206774dcab25dc80da5ba541bc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **557.1 MB (557095950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:658a4dec5d130c28ceafad4b32b0ab575fd2547d01fd5c61d936d580b6655e2d`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:25:54 GMT
ENV container oci
# Mon, 02 Nov 2026 00:25:55 GMT
COPY dir:beed1d3a16575ec118f191761da739f3c3ef4d43b6f2d9506bd7c069a5485c34 in /      
# Mon, 02 Nov 2026 00:25:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:25:55 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:25:56 GMT
COPY dir:d04491bd234c5ba6fb79223a8b3de7ac6f96d8f78b91768d0baaaf3dfdcf46d8 in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:25:56 GMT
COPY dir:d04491bd234c5ba6fb79223a8b3de7ac6f96d8f78b91768d0baaaf3dfdcf46d8 in /root/buildinfo/      
# Mon, 02 Nov 2026 00:25:57 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:25:24Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:25:24Z" "architecture"="aarch64" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:25:24Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 00:55:54 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 03 Nov 2026 00:55:54 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 03 Nov 2026 01:03:31 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 03 Nov 2026 01:03:32 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 03 Nov 2026 01:03:32 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 03 Nov 2026 01:03:32 GMT
RUN fc-cache -v # buildkit
# Tue, 03 Nov 2026 01:03:32 GMT
WORKDIR /usr/share/kibana
# Tue, 03 Nov 2026 01:03:32 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 03 Nov 2026 01:03:32 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 03 Nov 2026 01:03:32 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:03:32 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 03 Nov 2026 01:03:32 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 01:03:33 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 03 Nov 2026 01:03:34 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 03 Nov 2026 01:03:34 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 03 Nov 2026 01:03:34 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 03 Nov 2026 01:03:34 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 03 Nov 2026 01:03:34 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 03 Nov 2026 01:03:34 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 03 Nov 2026 01:03:34 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 03 Nov 2026 01:03:34 GMT
USER 1000
```

-	Layers:
	-	`sha256:523fc0b16ef3fb709fb87d6929dec51b632bf658c79e38ac795e0e360eb9a90c`  
		Last Modified: Mon, 02 Nov 2026 01:16:09 GMT  
		Size: 38.8 MB (38764189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25d73ff9ee1dca3d70928e8db731fd35c0362a4be9560defc845090569b89c62`  
		Last Modified: Tue, 03 Nov 2026 01:04:57 GMT  
		Size: 19.3 MB (19250390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f84626192ca9d9aa9d7001fa570351bd87cde7bb624dfc822aa172a5f9b60b74`  
		Last Modified: Tue, 03 Nov 2026 01:05:09 GMT  
		Size: 482.5 MB (482524466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a401aed9bdf3c29f44936c9f3f4fa4d0ad99ecef5e85b70b5933fceef3647289`  
		Last Modified: Tue, 03 Nov 2026 01:04:56 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1da87ddaf9829dd74ba8445b6a832702fc8ac85820ad12e6d9d53b26e1173bf0`  
		Last Modified: Tue, 03 Nov 2026 01:04:57 GMT  
		Size: 16.5 MB (16460482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2017d7dc2b2f87868711feccaba09838109e3d0762568d083fb646dbb7c41444`  
		Last Modified: Tue, 03 Nov 2026 01:04:57 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96a387802f3155c142cf7ee91c2476ac5d37215efcb94f449c42116923700c4`  
		Last Modified: Tue, 03 Nov 2026 01:04:58 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27cb4cc3ece2bfdd4f3e51b7c643f49d4e22af0cc330b8ad81e875cc771eaf4`  
		Last Modified: Tue, 03 Nov 2026 01:04:59 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd1ca60ee5108d63c39f121876a18a98260b02ce26763a0a5fb2a1142db80618`  
		Last Modified: Tue, 03 Nov 2026 01:04:59 GMT  
		Size: 4.9 KB (4929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:080513029156b2a663f7be2059cad4ab6b3c98c4dab581d5375ac8cff4491975`  
		Last Modified: Tue, 03 Nov 2026 01:05:00 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c499df5fdd1a2ecbbf26eb5cbdc13f09de68c4ac874b92102f03d815e39396a`  
		Last Modified: Tue, 03 Nov 2026 01:05:00 GMT  
		Size: 73.5 KB (73456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bf25732cce2c5d2cbd2995963f0b670709606f1993544f5d06a5b03741f61f1`  
		Last Modified: Tue, 03 Nov 2026 01:05:00 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7bfca1bf62ddb18a558e485f58a0ada164bacb5a6e1e63a8ff1e77a356d7d5d`  
		Last Modified: Tue, 03 Nov 2026 01:05:01 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:f9c8dc42911b6fa8aba4c0f5eae99935cd693a9a9fb2227a432927420226e350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5898906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73b200c35a160332164579f65d66b069b9600b52cb2cf627a26b0be2eaf7d653`

```dockerfile
```

-	Layers:
	-	`sha256:5d03aa468d9d1c777d21e5504e5bd86b6c33a9ea2fd01250a1a65f778ac707e2`  
		Last Modified: Tue, 03 Nov 2026 01:04:56 GMT  
		Size: 5.9 MB (5855423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07f1169b7a0db99f9982847959d9ac915454bf80d9c52e7944622512dc74c0ce`  
		Last Modified: Tue, 03 Nov 2026 01:04:56 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.5`

```console
$ docker pull kibana@sha256:b1a96543d7416b2a18cbe39896bb69d4b19c8c82f19abb90e0e0b31048a41a47
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.5` - linux; amd64

```console
$ docker pull kibana@sha256:a2e74ccb21a7bb8ea07896d853e364dfcf0742a51ba56fb2809108e6db0af0e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.2 MB (537226797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4480e5e153f66beb111803c3da6b110f0f2fe8cd11955e6e1e8f8757bef8bbdb`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:24:06 GMT
ENV container oci
# Mon, 02 Nov 2026 00:24:06 GMT
COPY dir:cf1fefd4be4ce5fd82fa07ab19c9ebc91b7a3b97c257e48429ad961fafad7a2a in /      
# Mon, 02 Nov 2026 00:24:07 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:24:07 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:24:07 GMT
COPY dir:b80413ac409186f827c6d9af3ec402d8af6bb4a454f39ae79bbc5c2a9f19635c in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:24:07 GMT
COPY dir:b80413ac409186f827c6d9af3ec402d8af6bb4a454f39ae79bbc5c2a9f19635c in /root/buildinfo/      
# Mon, 02 Nov 2026 00:24:07 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:23:43Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:23:43Z" "architecture"="x86_64" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:23:43Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 00:56:01 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 03 Nov 2026 00:56:01 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 03 Nov 2026 01:07:36 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 03 Nov 2026 01:07:36 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 03 Nov 2026 01:07:37 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 03 Nov 2026 01:07:37 GMT
RUN fc-cache -v # buildkit
# Tue, 03 Nov 2026 01:07:37 GMT
WORKDIR /usr/share/kibana
# Tue, 03 Nov 2026 01:07:37 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 03 Nov 2026 01:07:37 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 03 Nov 2026 01:07:37 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:07:37 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 03 Nov 2026 01:07:37 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 01:07:38 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 03 Nov 2026 01:07:38 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 03 Nov 2026 01:07:38 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 03 Nov 2026 01:07:38 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 03 Nov 2026 01:07:38 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 03 Nov 2026 01:07:38 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 03 Nov 2026 01:07:38 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 03 Nov 2026 01:07:38 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 03 Nov 2026 01:07:38 GMT
USER 1000
```

-	Layers:
	-	`sha256:0811bc98b695d75fb388d477ae3bfd11d656060625574fd2cff4fde9fbb28941`  
		Last Modified: Mon, 02 Nov 2026 01:16:09 GMT  
		Size: 40.7 MB (40656388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca0de18fd024e37586b473498bb6d8e75057f03df4fc072916ab3f738e93cd2`  
		Last Modified: Tue, 03 Nov 2026 01:08:43 GMT  
		Size: 19.3 MB (19314412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d01a90f3194a368d42c59bf785cbbe05789a97777e02813d51c4b31c5b697ab`  
		Last Modified: Tue, 03 Nov 2026 01:08:51 GMT  
		Size: 460.7 MB (460697493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2648e6d4a88eb78bbc1972c0dae53eceef9cb65ad43f777dcec025346245f4d9`  
		Last Modified: Tue, 03 Nov 2026 01:08:42 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc88cf4694590f0b72c163a58982a08bd9cc5ccc97db5042399a8ac7ef2225b4`  
		Last Modified: Tue, 03 Nov 2026 01:08:43 GMT  
		Size: 16.5 MB (16460487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b7117a0f064fe46814c3af599d7058b326c276ce07f61a41f65d5d387f3917b`  
		Last Modified: Tue, 03 Nov 2026 01:08:43 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b5ec1a6a07ac9e33367adccb958497219f6330a07e7d96bffdb94ce9e74a3ba`  
		Last Modified: Tue, 03 Nov 2026 01:08:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9027355f702f1627eb7c89700b3eec52f75441cb2ebf539657ba8f11629ad71`  
		Last Modified: Tue, 03 Nov 2026 01:08:44 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bef93caab79b995435bb2e204b74ebcee2309c4fee6e7ebdc2ed8fddd369119f`  
		Last Modified: Tue, 03 Nov 2026 01:08:45 GMT  
		Size: 5.0 KB (5006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d706102f82f6e132685cae2db507b8d5f636b86e1b8cba3f30b35dc4dd3091`  
		Last Modified: Tue, 03 Nov 2026 01:08:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08ec4ccce1d6cfbb74b2305fd5067449c9df89e74183fa6baebc48bf55086e`  
		Last Modified: Tue, 03 Nov 2026 01:08:46 GMT  
		Size: 74.5 KB (74548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6dafdace19686cb25293140814484e28235fdf9e30f0b55da21e437abce812`  
		Last Modified: Tue, 03 Nov 2026 01:08:46 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac984ecb984c24df59fb440ca5db244aa3439fc599a97efe30a65d78b6a1ef59`  
		Last Modified: Tue, 03 Nov 2026 01:08:47 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:21bbe76ab07903d09c0eab4775e6dfb7c75ca78862d4069c2577a37118b14081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6121824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40922e2539df9556b66e25e10e838f3e168200b7d3ca053a635b8c8336c511f7`

```dockerfile
```

-	Layers:
	-	`sha256:eddcaf91782f107aab437c25c272c37e81d4ef9e619cb1e4a00d790fd5dada9d`  
		Last Modified: Tue, 03 Nov 2026 01:08:42 GMT  
		Size: 6.1 MB (6078598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8c67ef853bf3e4efdd9e00a36b8879a07dd9ad57fc0549bfbb52e70a0d336b1`  
		Last Modified: Tue, 03 Nov 2026 01:08:42 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.5` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:7732afafad9185558add739d5881645ee1a4324c33bc975f7f5574301397beb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **548.7 MB (548738969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0232b2d02ea1a0f87b68a5abe185c6d498abb42d2e4127b1ee95a1b5616426`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:25:54 GMT
ENV container oci
# Mon, 02 Nov 2026 00:25:55 GMT
COPY dir:beed1d3a16575ec118f191761da739f3c3ef4d43b6f2d9506bd7c069a5485c34 in /      
# Mon, 02 Nov 2026 00:25:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:25:55 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:25:56 GMT
COPY dir:d04491bd234c5ba6fb79223a8b3de7ac6f96d8f78b91768d0baaaf3dfdcf46d8 in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:25:56 GMT
COPY dir:d04491bd234c5ba6fb79223a8b3de7ac6f96d8f78b91768d0baaaf3dfdcf46d8 in /root/buildinfo/      
# Mon, 02 Nov 2026 00:25:57 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:25:24Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:25:24Z" "architecture"="aarch64" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:25:24Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 00:55:56 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 03 Nov 2026 00:55:56 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 03 Nov 2026 01:03:06 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 03 Nov 2026 01:03:07 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 03 Nov 2026 01:03:07 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 03 Nov 2026 01:03:07 GMT
RUN fc-cache -v # buildkit
# Tue, 03 Nov 2026 01:03:07 GMT
WORKDIR /usr/share/kibana
# Tue, 03 Nov 2026 01:03:07 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 03 Nov 2026 01:03:07 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 03 Nov 2026 01:03:07 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:03:07 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 03 Nov 2026 01:03:07 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 01:03:08 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 03 Nov 2026 01:03:09 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 03 Nov 2026 01:03:09 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 03 Nov 2026 01:03:09 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 03 Nov 2026 01:03:09 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 03 Nov 2026 01:03:09 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 03 Nov 2026 01:03:09 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 03 Nov 2026 01:03:09 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 03 Nov 2026 01:03:09 GMT
USER 1000
```

-	Layers:
	-	`sha256:523fc0b16ef3fb709fb87d6929dec51b632bf658c79e38ac795e0e360eb9a90c`  
		Last Modified: Mon, 02 Nov 2026 01:16:09 GMT  
		Size: 38.8 MB (38764189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94f008f4f96835d72759598e9976cf4d0864178b0b99f5116eff767ff925551b`  
		Last Modified: Tue, 03 Nov 2026 01:04:26 GMT  
		Size: 19.3 MB (19250151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:235718b1ae04bb1ee5f4fb78ea0099fd2ed17691085b481ffda59e3ce57d3920`  
		Last Modified: Tue, 03 Nov 2026 01:04:34 GMT  
		Size: 474.2 MB (474167643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8b2b9d9c2ee0e7c58e958d9537fae48cdba3797b0a99defac27df7ea315916`  
		Last Modified: Tue, 03 Nov 2026 01:04:25 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d9ffaad02394d9ac9a23e1b6bb7bfb18007edb6a9ed496a9e6eec0b8ee3849b`  
		Last Modified: Tue, 03 Nov 2026 01:04:26 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4d5202f447550100e0ca434d1a5f80c0879c9baacca9101d7cc7e21589ae86`  
		Last Modified: Tue, 03 Nov 2026 01:04:26 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ebd8130b1aa123997abb34c8685cb5994256d5490d0d1b33696377a93e653c`  
		Last Modified: Tue, 03 Nov 2026 01:04:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50e76ed56cc9e18e9bee78e6d2b236fd624afd49cffe06fe77fd408b385fe1ad`  
		Last Modified: Tue, 03 Nov 2026 01:04:28 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e813f1c3e6ba936de80be4e2c4db1950e2f286ec104f2ac063044a8725840b2b`  
		Last Modified: Tue, 03 Nov 2026 01:04:28 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2902a260dd48d4c2c0e5944c5cb47c9eda128dbe954084eab835d83c84b8a00c`  
		Last Modified: Tue, 03 Nov 2026 01:04:29 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3974c8771dac67dd229dc71373411964107fc0fde1f6e92f4d37273ad0b6d35`  
		Last Modified: Tue, 03 Nov 2026 01:04:29 GMT  
		Size: 73.5 KB (73455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6dacae694a94f0c6430c7f100c5856f44c24b3e5b23a99007e17582e376b39b`  
		Last Modified: Tue, 03 Nov 2026 01:04:29 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74eec0c6045663e6c575a8c214ef0adadba4d93a9b801145ba09b44382dee3e3`  
		Last Modified: Tue, 03 Nov 2026 01:04:30 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:dd92bda8f8a9ac7f365e4a4ee78caae1bf79e3774be5509286cfc2f0b3ae5455
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6118971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4673ab14858159596b48dc88738b4a3ba15cfaee6b90560b96c7cf7b6b9d7dd3`

```dockerfile
```

-	Layers:
	-	`sha256:5dbcece715d7853b9883dba94f0a45015ad61c65c7072b110dd56f290821528f`  
		Last Modified: Tue, 03 Nov 2026 01:04:26 GMT  
		Size: 6.1 MB (6075488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31d9434cb31142cbf6730fe87d329f460c5dc8a1cf8a7a7f859b6839234db9bd`  
		Last Modified: Tue, 03 Nov 2026 01:04:25 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
