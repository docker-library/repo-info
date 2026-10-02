<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.22`](#kibana81922)
-	[`kibana:9.4.6`](#kibana946)
-	[`kibana:9.5.3`](#kibana953)

## `kibana:8.19.22`

```console
$ docker pull kibana@sha256:4116dd6a58380c79acb51e21d1bc00c68219baeaa8f66de25f476c72920edf1f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:8.19.22` - linux; amd64

```console
$ docker pull kibana@sha256:5124606d4e435cf24ab8e7f889a0b9f9d27e27a62e3faae9d354daaa11e7605b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.2 MB (598195665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e3221ef10559c70c70a74b4d62d571dfa16ed588f06fd8b54d8af39a886aadf`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:30:13 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 02 Oct 2026 01:30:13 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:43:19 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 02 Oct 2026 01:43:19 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 02 Oct 2026 01:43:19 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Fri, 02 Oct 2026 01:43:20 GMT
RUN fc-cache -v # buildkit
# Fri, 02 Oct 2026 01:43:20 GMT
WORKDIR /usr/share/kibana
# Fri, 02 Oct 2026 01:43:20 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 02 Oct 2026 01:43:20 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 02 Oct 2026 01:43:20 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:43:20 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 02 Oct 2026 01:43:20 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:43:21 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 02 Oct 2026 01:43:22 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 02 Oct 2026 01:43:22 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 02 Oct 2026 01:43:22 GMT
LABEL org.label-schema.build-date=2026-09-18T12:10:48.807Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=fd8e6f336cd7a18d0fd805de4608e1e38e0da163 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.22 org.opencontainers.image.created=2026-09-18T12:10:48.807Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=fd8e6f336cd7a18d0fd805de4608e1e38e0da163 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.22
# Fri, 02 Oct 2026 01:43:22 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 02 Oct 2026 01:43:22 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 02 Oct 2026 01:43:22 GMT
USER 1000
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:608fee19940c27b8913c3bbe6b9d1ee60dc6694ff6832cc7b236bf0151cbdbc6`  
		Last Modified: Fri, 02 Oct 2026 01:44:45 GMT  
		Size: 11.8 MB (11824655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce02817f74b5cbe7a4946fdc1eaae2a3bf52470a7fa3516983c59fe632bf48a8`  
		Last Modified: Fri, 02 Oct 2026 01:44:54 GMT  
		Size: 540.0 MB (539962595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a7e0058622260dad805be26d3991ea8bf57228f1aa68a44352b97cc3469f58`  
		Last Modified: Fri, 02 Oct 2026 01:44:44 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:103a097b6237efe8cf2262c0e9963430f94e26f7d4ccd7f24e5ac09d06b56ea3`  
		Last Modified: Fri, 02 Oct 2026 01:44:45 GMT  
		Size: 16.5 MB (16460487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2886e63028c628637e437a04e8145fa6f6fd897d936f57688f6846d70f8fd99e`  
		Last Modified: Fri, 02 Oct 2026 01:44:46 GMT  
		Size: 5.2 KB (5237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f36f4c44b33c40567ad54364e50d0d692cb13c92b3dce00dd333327d483af5`  
		Last Modified: Fri, 02 Oct 2026 01:44:47 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab395ac1a51dc989906c9ac45e70ac54dd23caae7b4eb373d19ad1af229eee6`  
		Last Modified: Fri, 02 Oct 2026 01:44:47 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5b19e0203cec796392058eebb8d92af137f65569b1ee868d9dad1e82fe6f8d`  
		Last Modified: Fri, 02 Oct 2026 01:44:47 GMT  
		Size: 4.8 KB (4819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:285f4bdd8e45101c831c9b636d22358a6f8957fb99b9d50db3b7f2dc19537eb0`  
		Last Modified: Fri, 02 Oct 2026 01:44:48 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9782f174e8a8eaa47fc6f015542ecd9845bda394a83e39ef41936176d807a2`  
		Last Modified: Fri, 02 Oct 2026 01:44:48 GMT  
		Size: 161.7 KB (161739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf75c4bd5b50cf964f184a4c2ac95f3a46874ed901f0c99f0df1c4fd7ba05b75`  
		Last Modified: Fri, 02 Oct 2026 01:44:48 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.22` - unknown; unknown

```console
$ docker pull kibana@sha256:8d94246937284606edd7fe8fb718c528a12de54abd27724c334c60e7aff4250a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4856859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26db425aa4dec9ade36394bade33313e5b293aeee743a0cf7945e4ddb4e3eb12`

```dockerfile
```

-	Layers:
	-	`sha256:2617657ecf0de99acbb94b561f891fb1be3529a0008e5bd7a74aa42dc84a8e84`  
		Last Modified: Fri, 02 Oct 2026 01:44:45 GMT  
		Size: 4.8 MB (4815932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b5ea045e30e2a4012a57fb175960e7a3f58d8a3278c3e456085e516a9766734`  
		Last Modified: Fri, 02 Oct 2026 01:44:44 GMT  
		Size: 40.9 KB (40927 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:8.19.22` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:948a62c88d035693208d3bf4440ea0ab37697b94c8f68b4e336e1b70645a67f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **610.7 MB (610716763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:322eeb04d1c470ba4dd2be3dd8235a8c54932e0a992c666da9294a7a37899846`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:29:56 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 02 Oct 2026 01:29:56 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:40:03 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 02 Oct 2026 01:40:04 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 02 Oct 2026 01:40:04 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Fri, 02 Oct 2026 01:40:04 GMT
RUN fc-cache -v # buildkit
# Fri, 02 Oct 2026 01:40:04 GMT
WORKDIR /usr/share/kibana
# Fri, 02 Oct 2026 01:40:04 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 02 Oct 2026 01:40:04 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 02 Oct 2026 01:40:04 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:40:04 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 02 Oct 2026 01:40:04 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:40:06 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 02 Oct 2026 01:40:07 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 02 Oct 2026 01:40:07 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 02 Oct 2026 01:40:07 GMT
LABEL org.label-schema.build-date=2026-09-18T12:10:48.807Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=fd8e6f336cd7a18d0fd805de4608e1e38e0da163 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.22 org.opencontainers.image.created=2026-09-18T12:10:48.807Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=fd8e6f336cd7a18d0fd805de4608e1e38e0da163 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.22
# Fri, 02 Oct 2026 01:40:07 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 02 Oct 2026 01:40:07 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 02 Oct 2026 01:40:07 GMT
USER 1000
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3fd91e36e638e23c14d89a7a0949cb67fc918a14aa6fa96773eb0e6b7e1d46`  
		Last Modified: Fri, 02 Oct 2026 01:41:45 GMT  
		Size: 11.7 MB (11700793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca15eed110cbdd0035ca1c012b627d0f18ab773c8bf36b1647a40575c542585b`  
		Last Modified: Fri, 02 Oct 2026 01:41:55 GMT  
		Size: 553.4 MB (553435803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd80b97b35914e8a972d3dd054c5cbf5ebe6d552611481be996b9a1c248a154`  
		Last Modified: Fri, 02 Oct 2026 01:41:44 GMT  
		Size: 9.1 KB (9097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11af90890aec03aba9d63ee9b706141a1c4c9d4d90e6b38e20bc79867b14954d`  
		Last Modified: Fri, 02 Oct 2026 01:41:45 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ca733d87fd615f9da59593d06a12dfacd03707daf787beb3cb0402f35d0a6ec`  
		Last Modified: Fri, 02 Oct 2026 01:41:45 GMT  
		Size: 5.2 KB (5240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e179ef17f4aa1fc33d975408265275fc75f2ca57d93fb98027d0337648884c1b`  
		Last Modified: Fri, 02 Oct 2026 01:41:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32676a41bd2c2607841d28c3d4b87feeeef5012dcef1894f5a4a97b7d56470a`  
		Last Modified: Fri, 02 Oct 2026 01:41:46 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f93770b43278102e02049bc3ed931e0d41b458bf2f84f51d404a6582fb64b7`  
		Last Modified: Fri, 02 Oct 2026 01:41:47 GMT  
		Size: 4.8 KB (4821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4328cddf71f56dc15cf24a1712870cfdd480a0705bd468cc14072f1d0d77c73b`  
		Last Modified: Fri, 02 Oct 2026 01:41:47 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9cc7383afc4da23172da08873e7d7a2e46c08d7e6fba2f0b34b880483aa0717`  
		Last Modified: Fri, 02 Oct 2026 01:41:48 GMT  
		Size: 158.3 KB (158252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee8fc48124a744cb75bf98451575bd596be57d812e7ab5b07b84d9c822557915`  
		Last Modified: Fri, 02 Oct 2026 01:41:48 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.22` - unknown; unknown

```console
$ docker pull kibana@sha256:0ce2a4746dbcc67036fb97b7d913cea4c5a1e91b52b3d3bbf707394889ffd14a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4858171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c6ac7fa150e72a31665a6ba3785738d1c0366915efc98a253414ea42ea4a333`

```dockerfile
```

-	Layers:
	-	`sha256:f9c2171b4d5e4740632da2d5fdb4e8bbd7b061abafc731f5cff3822edeb584a4`  
		Last Modified: Fri, 02 Oct 2026 01:41:44 GMT  
		Size: 4.8 MB (4816996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5548c32a5709c7c6356a9399f209974308b1119e069867f06d207c864babb60c`  
		Last Modified: Fri, 02 Oct 2026 01:41:44 GMT  
		Size: 41.2 KB (41175 bytes)  
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
