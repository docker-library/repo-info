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
$ docker pull kibana@sha256:f1162267fc48be61911d52f4f162cfe265034d4d28cddcabf604f84873fac892
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.8` - linux; amd64

```console
$ docker pull kibana@sha256:e0d204ace4f0bc7dc0a1050770482c8588d2777a42cf8700abc4bada7196b53f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.6 MB (545593564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c36a4811ed55855475c358868ee8ee1c8fc714e705324e237cd0c62765ee85e0`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:51:55 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 05 Nov 2026 22:51:55 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Thu, 05 Nov 2026 23:02:08 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 05 Nov 2026 23:02:09 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 05 Nov 2026 23:02:09 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 05 Nov 2026 23:02:09 GMT
RUN fc-cache -v # buildkit
# Thu, 05 Nov 2026 23:02:09 GMT
WORKDIR /usr/share/kibana
# Thu, 05 Nov 2026 23:02:09 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 05 Nov 2026 23:02:09 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 05 Nov 2026 23:02:09 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 23:02:09 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 05 Nov 2026 23:02:09 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 23:02:10 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 05 Nov 2026 23:02:11 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 05 Nov 2026 23:02:11 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 05 Nov 2026 23:02:11 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Thu, 05 Nov 2026 23:02:11 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Thu, 05 Nov 2026 23:02:11 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 05 Nov 2026 23:02:11 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 05 Nov 2026 23:02:11 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 05 Nov 2026 23:02:11 GMT
USER 1000
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e174c77f63db2cd19b7baf40c1fcf6c52417053e02bf747cc1335d879120d3d`  
		Last Modified: Thu, 05 Nov 2026 23:03:30 GMT  
		Size: 19.3 MB (19314359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e93d827e7b7e845ff8120d7c8cb3d385e6fa2ceeb6712c816671c668ee5d05`  
		Last Modified: Thu, 05 Nov 2026 23:03:40 GMT  
		Size: 469.1 MB (469064023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4fce0a2f3af2da8c8e9d1ef80dff57ae6eea4d096667ff3cdaa38b316867110`  
		Last Modified: Thu, 05 Nov 2026 23:03:29 GMT  
		Size: 9.5 KB (9528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bafbc18866880cf0fc09aeb447bc63b3ec47611b2acb72c1e0ceff0018c4793d`  
		Last Modified: Thu, 05 Nov 2026 23:03:30 GMT  
		Size: 16.5 MB (16460482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce14bda1f7028b4485e1ed646972961a2639d8fc65ae87b0bfeb57b0146534a`  
		Last Modified: Thu, 05 Nov 2026 23:03:31 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d56d560818b9e949eafc429f80d1688de273e8d58fccbe419e8948c1b8d9cd3c`  
		Last Modified: Thu, 05 Nov 2026 23:03:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a5fc584fda104e5bf2bc9e3be1e1e842800ceb4d5362a5d860637f4432216c`  
		Last Modified: Thu, 05 Nov 2026 23:03:32 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74990d6f3d2ae8390a5163128ee18c21865739be880294c31313e63d219c844c`  
		Last Modified: Thu, 05 Nov 2026 23:03:32 GMT  
		Size: 4.9 KB (4924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc4ada1862950db7e4a32e0ccde962bf0c3c5264f834d6e59796a930c96e3ce`  
		Last Modified: Thu, 05 Nov 2026 23:03:33 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:955350b78a6f1743f83bd90e1289a17520c71237c3cdd4d285e3919431c09a0c`  
		Last Modified: Thu, 05 Nov 2026 23:03:33 GMT  
		Size: 74.5 KB (74544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1c1b9bc711b22e00cb8184adf46f271af82577c179571695d807557d97e52b`  
		Last Modified: Thu, 05 Nov 2026 23:03:33 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d289d4bdb00c5b9ac8f589524da268eb60d9e340ea1949c38551270987d1da1`  
		Last Modified: Thu, 05 Nov 2026 23:03:34 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:2c47a29ac93e6ff5d20315ed61b25252ddaebfeaf9ab09a1b17a48ec5d69a2bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5901759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd07ab2f84d44ca53814490d796b6d5ca3956d4dcbffcce90948895aa7d8a76`

```dockerfile
```

-	Layers:
	-	`sha256:fad60e1327f8f09de56c544e42014c2e4d14a754643da3b5a14f17b2beef0604`  
		Last Modified: Thu, 05 Nov 2026 23:03:30 GMT  
		Size: 5.9 MB (5858533 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41dbfe072f2a36b45ce3d10c89d7dc6289adc66e9fd1799b78f9d1703e398c05`  
		Last Modified: Thu, 05 Nov 2026 23:03:29 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:356ae009dfd2cc6a7d19ccbf33a8dfa0e3767f334f9c56890ccdd8437a7f9a94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **557.1 MB (557092930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7343a0df13167ca4b16c6d990bc28de32d11cb13dd000b597682899c344d2f3b`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:04:02 GMT
ENV container oci
# Thu, 05 Nov 2026 07:04:03 GMT
COPY dir:2bdd2747ab945d7a9d2ac3c44d42257c603213cbc7baa656ccc81a23ba6bf702 in /      
# Thu, 05 Nov 2026 07:04:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:04:03 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:04:04 GMT
COPY dir:0bf6d55dc3f3a1cecfd7536d39dffd0748b22d85e0ea4bba976d70298d6022a0 in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:04:04 GMT
COPY dir:0bf6d55dc3f3a1cecfd7536d39dffd0748b22d85e0ea4bba976d70298d6022a0 in /root/buildinfo/      
# Thu, 05 Nov 2026 07:04:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:03:31Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:03:31Z" "architecture"="aarch64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:03:31Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 23:50:47 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 05 Nov 2026 23:50:47 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Thu, 05 Nov 2026 23:58:52 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 05 Nov 2026 23:58:52 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 05 Nov 2026 23:58:52 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 05 Nov 2026 23:58:53 GMT
RUN fc-cache -v # buildkit
# Thu, 05 Nov 2026 23:58:53 GMT
WORKDIR /usr/share/kibana
# Thu, 05 Nov 2026 23:58:53 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 05 Nov 2026 23:58:53 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 05 Nov 2026 23:58:53 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 23:58:53 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 05 Nov 2026 23:58:53 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 23:58:54 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 05 Nov 2026 23:58:55 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 05 Nov 2026 23:58:55 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 05 Nov 2026 23:58:55 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Thu, 05 Nov 2026 23:58:55 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Thu, 05 Nov 2026 23:58:55 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 05 Nov 2026 23:58:55 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 05 Nov 2026 23:58:55 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 05 Nov 2026 23:58:55 GMT
USER 1000
```

-	Layers:
	-	`sha256:9f9a14895de9c30c7ee6336a5ea720dc2fe575b0809b678170d0b1484cbdcc6c`  
		Last Modified: Thu, 05 Nov 2026 08:00:30 GMT  
		Size: 38.8 MB (38764456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1657f5e6fb60179bb25b93d032da57049dc775875bb1fcc5dedfa7f8a70d2cf3`  
		Last Modified: Fri, 06 Nov 2026 00:00:18 GMT  
		Size: 19.3 MB (19250619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65e2c1cf1f9513a42fc78e5b1c3ecdc94ec192918a7c8006c3b6fef3d745b640`  
		Last Modified: Fri, 06 Nov 2026 00:00:28 GMT  
		Size: 482.5 MB (482520953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd2b545477d1fe059408e8ca7cf86346b2d87a20119d44ccf7c02243ca9a6e3b`  
		Last Modified: Fri, 06 Nov 2026 00:00:16 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ad31b948027ed95ee11c3d069400df8b7a2ade0ce8c3c4bce750cc85b3bc65`  
		Last Modified: Fri, 06 Nov 2026 00:00:19 GMT  
		Size: 16.5 MB (16460486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b135f3eb8635e88186c83332a41df46d9e842e1f2db57da8ff63245c44d21d67`  
		Last Modified: Fri, 06 Nov 2026 00:00:18 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6042bbaba633f30e2e62e9c3e87cb65330414c809359adac2969b7e0a7e2f4e1`  
		Last Modified: Fri, 06 Nov 2026 00:00:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762f248a7cf7682acae6dd0d581ce8451e89007b4fe277cbc7ea82bd83a1085c`  
		Last Modified: Fri, 06 Nov 2026 00:00:20 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acee01ccaa204e3fa4cb3898b4d2f07a7189d578605e60d30d913db87aadbb9d`  
		Last Modified: Fri, 06 Nov 2026 00:00:21 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c984d7bacebe1777333ef9091d921bb3de7db0a0d38d97f29835f18c0299532d`  
		Last Modified: Fri, 06 Nov 2026 00:00:22 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b1b4ec0eb6abd2a87b5dcbc04dea6e861cfe95117cb2015303a72da36d22f63`  
		Last Modified: Fri, 06 Nov 2026 00:00:23 GMT  
		Size: 73.5 KB (73454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8a21224baa526a236e845d26b4fa9b5f751062149b414dab3040e85f4c7a17`  
		Last Modified: Fri, 06 Nov 2026 00:00:23 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603d730c1c77921583323f6ae8f1e2ecd1341acc417e8c06193ca1f960cd69a9`  
		Last Modified: Fri, 06 Nov 2026 00:00:24 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:cd3bd3dab594c057bb38648f160972d7109df9152b0945e0d0be7b1e15a772bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5898906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eea5d4e15dba186d30d07809ee8f1d1ca3f0aab6624d4f3b898ef4f25e44428`

```dockerfile
```

-	Layers:
	-	`sha256:4a87a318c265bea50ccb9e24a3932f6324c8e295f89b006438016540e88f1d5a`  
		Last Modified: Fri, 06 Nov 2026 00:00:17 GMT  
		Size: 5.9 MB (5855423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2eb81a52af7fde9527bb2b11a73bcc2731ec0fa2da6c5cde80fd561b2521991`  
		Last Modified: Fri, 06 Nov 2026 00:00:17 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.5`

```console
$ docker pull kibana@sha256:b60976eb402fdb39a36b6ec86e3c7e28b8f3226abd1623506f71ad6cc342a79c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.5` - linux; amd64

```console
$ docker pull kibana@sha256:00e9b047feaec676a821fffcbfeda197d802da6af36f53898c398fc345f525cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.2 MB (537233383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de789c5d0de7aff96d1bf97da290cf1616fc586f8ebfa362d23c38ebe7fcdf81`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:51:56 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 05 Nov 2026 22:51:56 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Thu, 05 Nov 2026 22:59:59 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 05 Nov 2026 22:59:59 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 05 Nov 2026 22:59:59 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 05 Nov 2026 22:59:59 GMT
RUN fc-cache -v # buildkit
# Thu, 05 Nov 2026 23:00:00 GMT
WORKDIR /usr/share/kibana
# Thu, 05 Nov 2026 23:00:00 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 05 Nov 2026 23:00:00 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 05 Nov 2026 23:00:00 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 23:00:00 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 05 Nov 2026 23:00:00 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 23:00:00 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 05 Nov 2026 23:00:01 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 05 Nov 2026 23:00:02 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 05 Nov 2026 23:00:02 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Thu, 05 Nov 2026 23:00:02 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Thu, 05 Nov 2026 23:00:02 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 05 Nov 2026 23:00:02 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 05 Nov 2026 23:00:02 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 05 Nov 2026 23:00:02 GMT
USER 1000
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e568713461c5f0360b4167d63a54199651a98392d0b1f9dd36e3197abe68ad88`  
		Last Modified: Thu, 05 Nov 2026 23:01:37 GMT  
		Size: 19.3 MB (19314293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af87045a8ea70764ebb1b29a5f4ba0846aaa05f678477c13d95abbefd5bedf6a`  
		Last Modified: Thu, 05 Nov 2026 23:04:36 GMT  
		Size: 460.7 MB (460703841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b081c0980fde360c1c95574ba89dd9d4affcc7f2e07272d8bdd21080f88df9`  
		Last Modified: Thu, 05 Nov 2026 23:01:14 GMT  
		Size: 9.5 KB (9527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916c676c950dd92af13827e1fbef59a90927263a46bc6a071a79651b713d2549`  
		Last Modified: Thu, 05 Nov 2026 23:01:34 GMT  
		Size: 16.5 MB (16460479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb4776537791af4968edcccf9595ff9a7db91934f2f6fcf0ce8fc8043aa2d5b1`  
		Last Modified: Thu, 05 Nov 2026 23:01:20 GMT  
		Size: 5.2 KB (5218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e04d6c621d22dad08ebfdfb25bb0628569369cc8573732657bf61425f982ff`  
		Last Modified: Thu, 05 Nov 2026 23:01:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da4ba17eb1fadb158fcb593bc810ff3c83430c787498fea2e05cc3593367eee`  
		Last Modified: Thu, 05 Nov 2026 23:01:38 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b995484aad2e25cbcd8b4ad73b1f4a4f20a5fe4c9b246485ff3b1f1b47dd502f`  
		Last Modified: Thu, 05 Nov 2026 23:01:39 GMT  
		Size: 5.0 KB (4998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d6d87519f6c671281054d680539b72408d84f4f88281016307b50003e1dda9`  
		Last Modified: Thu, 05 Nov 2026 23:01:43 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadd64097804a65dc119144209e608382b72e1588157cdae8177d93fc7173e6c`  
		Last Modified: Thu, 05 Nov 2026 23:01:44 GMT  
		Size: 74.5 KB (74540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:388b751dec90d6aa322a4fc2e3fe6e9743b70787573f17390712c4d498cd4d6a`  
		Last Modified: Thu, 05 Nov 2026 23:01:45 GMT  
		Size: 1.1 KB (1052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ed657c7a6018f64d67c7826511f556bdce32377ba210e9d5e288b3be5133a9`  
		Last Modified: Thu, 05 Nov 2026 23:01:48 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:6aa25a367f6f965efc4e70dcb7f7b5c878f6bfdbf947df508d526cf0817c5d42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6121824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3000cb8d80f6584a9bdb2095a6053e70c4c039c64b32e1241637bef0dd6c9977`

```dockerfile
```

-	Layers:
	-	`sha256:cbe8c9133e6211efb8bf79b19a82e236a2fd06c37fd7f411f8ca1fdd5b2b4b4b`  
		Last Modified: Thu, 05 Nov 2026 23:01:19 GMT  
		Size: 6.1 MB (6078598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa617ecdf3d48b91b8acf7d6e95766daab74a83900c4f3203077e8af5128cf4e`  
		Last Modified: Thu, 05 Nov 2026 23:01:13 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.5` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:717e27babbae1bb3124b15f94bf4df455e349d57546468d909e4f113d5c863e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **548.7 MB (548730712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:952855a0e35cef3c093e3b9f15eaa8a4e0639841d70cd8e5b426d3c3be3bc7b8`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:04:02 GMT
ENV container oci
# Thu, 05 Nov 2026 07:04:03 GMT
COPY dir:2bdd2747ab945d7a9d2ac3c44d42257c603213cbc7baa656ccc81a23ba6bf702 in /      
# Thu, 05 Nov 2026 07:04:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:04:03 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:04:04 GMT
COPY dir:0bf6d55dc3f3a1cecfd7536d39dffd0748b22d85e0ea4bba976d70298d6022a0 in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:04:04 GMT
COPY dir:0bf6d55dc3f3a1cecfd7536d39dffd0748b22d85e0ea4bba976d70298d6022a0 in /root/buildinfo/      
# Thu, 05 Nov 2026 07:04:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:03:31Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:03:31Z" "architecture"="aarch64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:03:31Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 23:30:39 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 05 Nov 2026 23:30:39 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Thu, 05 Nov 2026 23:37:29 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 05 Nov 2026 23:37:30 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 05 Nov 2026 23:37:30 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 05 Nov 2026 23:37:30 GMT
RUN fc-cache -v # buildkit
# Thu, 05 Nov 2026 23:37:30 GMT
WORKDIR /usr/share/kibana
# Thu, 05 Nov 2026 23:37:30 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 05 Nov 2026 23:37:30 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 05 Nov 2026 23:37:30 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 23:37:30 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 05 Nov 2026 23:37:30 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 23:37:31 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 05 Nov 2026 23:37:32 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 05 Nov 2026 23:37:32 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 05 Nov 2026 23:37:32 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Thu, 05 Nov 2026 23:37:32 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Thu, 05 Nov 2026 23:37:32 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 05 Nov 2026 23:37:32 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 05 Nov 2026 23:37:32 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 05 Nov 2026 23:37:32 GMT
USER 1000
```

-	Layers:
	-	`sha256:9f9a14895de9c30c7ee6336a5ea720dc2fe575b0809b678170d0b1484cbdcc6c`  
		Last Modified: Thu, 05 Nov 2026 08:00:30 GMT  
		Size: 38.8 MB (38764456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b881d080e785773f900c8e69c4383ea264d28b93129afb8b4bdfc5da96e64f37`  
		Last Modified: Thu, 05 Nov 2026 23:38:49 GMT  
		Size: 19.3 MB (19250649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fd8f8d446d87fe7dc10e8dd9c783010fa91c3b9362a15911ff4593282a690f`  
		Last Modified: Thu, 05 Nov 2026 23:38:58 GMT  
		Size: 474.2 MB (474158633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc538aabc90a0b63bf253bdcf2f8639bca33ed4682901fa830430fbff7df532a`  
		Last Modified: Thu, 05 Nov 2026 23:38:48 GMT  
		Size: 9.1 KB (9098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfed091b8810f9b8497c5c0eac61ded06c78112f658c4d81910c968eabbb683`  
		Last Modified: Thu, 05 Nov 2026 23:38:49 GMT  
		Size: 16.5 MB (16460486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9842a5d46a70a407f80d592289876e8be25148f366ae5fef6458e6c1e4440fc`  
		Last Modified: Thu, 05 Nov 2026 23:38:49 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce4a944c55b641aa73a447b381a8242371ec1570bd53d1fd5de9088c6b0b3eed`  
		Last Modified: Thu, 05 Nov 2026 23:38:51 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1291ef03049ea5c7b62eda1662aab50b99aad7874ee7dcbc7b95b90f515ecdf8`  
		Last Modified: Thu, 05 Nov 2026 23:38:51 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7d9b03a42a1e6ff33c3d1e35c3e5e6b241c87e91e1e21249df188696ae392e`  
		Last Modified: Thu, 05 Nov 2026 23:38:51 GMT  
		Size: 5.0 KB (5002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c94d6df5e7ae6f271e9a5592ee39e583a10258fc22f025385b072828b5e1979`  
		Last Modified: Thu, 05 Nov 2026 23:38:52 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e20488a05eba87e12b60b5a1184ee18cd66a7532227455be4dd54c6150967502`  
		Last Modified: Thu, 05 Nov 2026 23:38:52 GMT  
		Size: 73.5 KB (73455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2171fd10f577b77c8c9a86e848641cc3d296054a223a65f775c4f8cef4592423`  
		Last Modified: Thu, 05 Nov 2026 23:38:52 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5273514ecf12a267a078accb7535039d0b33cea2acd7a8f41038b76925051a35`  
		Last Modified: Thu, 05 Nov 2026 23:38:53 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:8db5b84f905edea7b4de8c5751c2349165d3a13cd952a07333d8ee20e6444f3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6118971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd4dde99397d3c8882c81099e30d48c05e2653ecb579d837b486e2d83692b865`

```dockerfile
```

-	Layers:
	-	`sha256:e42ee8718aaa39d3d07f408359ed6a2e93432311c539da214860e7318f12051f`  
		Last Modified: Thu, 05 Nov 2026 23:38:48 GMT  
		Size: 6.1 MB (6075488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fe9f2bc5261408c09efdda47bfa3a21c8cd7e588cc6651ae0b3294e80409949`  
		Last Modified: Thu, 05 Nov 2026 23:38:48 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
