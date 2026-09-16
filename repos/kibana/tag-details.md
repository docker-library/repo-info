<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.21`](#kibana81921)
-	[`kibana:9.4.6`](#kibana946)
-	[`kibana:9.5.3`](#kibana953)

## `kibana:8.19.21`

```console
$ docker pull kibana@sha256:f66fb28c614fa5d842195b7056ad4dd5528be9194975f8176ee3382c5db0c0d9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:8.19.21` - linux; amd64

```console
$ docker pull kibana@sha256:d2c5ddc7838fbf88c876245453312a564cf2ea94d495c4e29cf7ec118a7f3a16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.6 MB (456583049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9fa3fd595e75700a8fa9752e43f652e5093424c97184f5256ac596a653a8d77`
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
# Wed, 16 Sep 2026 03:25:22 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 16 Sep 2026 03:25:22 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:33:31 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 16 Sep 2026 03:33:31 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 16 Sep 2026 03:33:31 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 16 Sep 2026 03:33:31 GMT
RUN fc-cache -v # buildkit
# Wed, 16 Sep 2026 03:33:31 GMT
WORKDIR /usr/share/kibana
# Wed, 16 Sep 2026 03:33:32 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 16 Sep 2026 03:33:32 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 16 Sep 2026 03:33:32 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:33:32 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 16 Sep 2026 03:33:32 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:33:32 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 16 Sep 2026 03:33:33 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 16 Sep 2026 03:33:33 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 16 Sep 2026 03:33:33 GMT
LABEL org.label-schema.build-date=2026-08-26T18:14:44.924Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=f8b192d79d9df731fc3811263f4461d842834c6a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.21 org.opencontainers.image.created=2026-08-26T18:14:44.924Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=f8b192d79d9df731fc3811263f4461d842834c6a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.21
# Wed, 16 Sep 2026 03:33:33 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 16 Sep 2026 03:33:33 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 16 Sep 2026 03:33:33 GMT
USER 1000
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:261bb9add876e122e7d7eaed68c9404b6abf91406e72556d2aa972d462d21cb1`  
		Last Modified: Wed, 16 Sep 2026 03:34:29 GMT  
		Size: 9.4 MB (9393944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da9f622d71dfe4e15df770ab32d0fbdd0ecd7cc192e158f58665636fdbdbff4`  
		Last Modified: Wed, 16 Sep 2026 03:34:37 GMT  
		Size: 400.8 MB (400780996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c854d61191959605e17f933d3c5abaeac9a442868e0d0ef16df6da730147f5b5`  
		Last Modified: Wed, 16 Sep 2026 03:34:28 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff7aa3720e8de998a6c4aa59a865c97bef0c2ec96a6ae04c3b9f42d0c3df777`  
		Last Modified: Wed, 16 Sep 2026 03:34:29 GMT  
		Size: 16.5 MB (16460491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17628ceb9aa96b6a34526085c5df1e0f42a4370071cdab8408fb371d2bc21c3e`  
		Last Modified: Wed, 16 Sep 2026 03:34:29 GMT  
		Size: 5.2 KB (5240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a594493a18995a499e3fb61232119918e551aceef8774b0d9d0b6dc6fc382d26`  
		Last Modified: Wed, 16 Sep 2026 03:34:31 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43dc08084934ce7bc8d18ae37746e5b2b54c0f94dbb9da4598a6b962df7aaa7`  
		Last Modified: Wed, 16 Sep 2026 03:34:31 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68a8e3bacc9147c2486a9504eb877b25b966a96c30f456df90a6f0654dc825c`  
		Last Modified: Wed, 16 Sep 2026 03:34:31 GMT  
		Size: 4.8 KB (4818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c629d296ad4282ce98627e98f9fb3c58ab02685d713563da958c67d0257234b8`  
		Last Modified: Wed, 16 Sep 2026 03:34:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f22d4d8c61c8429b2d83585c205cb55ee2b2b390d851bd8b2d3c71121b557ef`  
		Last Modified: Wed, 16 Sep 2026 03:34:32 GMT  
		Size: 161.7 KB (161734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018e26c92ad63334ccd9c39f12c3c93cf70a605fbd2aad422c9d1109963dbac6`  
		Last Modified: Wed, 16 Sep 2026 03:34:32 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.21` - unknown; unknown

```console
$ docker pull kibana@sha256:6265568531b37a82c6b99e7d59bb2acb87a4aef04e2996aabaa780317aee6186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4889047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e4f0113c45a7c9bbae020bf34d71f0629f56830c427a3193d889f42aa2419f`

```dockerfile
```

-	Layers:
	-	`sha256:37948cdcb43b16a69e4b4d349cf2470f214bdb9e18689d53a69e514f95832e61`  
		Last Modified: Wed, 16 Sep 2026 03:34:28 GMT  
		Size: 4.8 MB (4848132 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40876b95d7c17b8fbdb6fa2fe9275fc5592bdc5c2ff13125943faa165e6a25db`  
		Last Modified: Wed, 16 Sep 2026 03:34:28 GMT  
		Size: 40.9 KB (40915 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:8.19.21` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:e8fb747c02344de8fa475abc14813f71c971b3d42e93cfe160e27ecac644b50d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.3 MB (469272685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9c608ef7537b6660bd39b16bc70741dd03edff03ef4955bb82392dc464e9a43`
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
# Wed, 16 Sep 2026 03:25:02 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 16 Sep 2026 03:25:02 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:49 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 16 Sep 2026 03:31:50 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 16 Sep 2026 03:31:50 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 16 Sep 2026 03:31:50 GMT
RUN fc-cache -v # buildkit
# Wed, 16 Sep 2026 03:31:50 GMT
WORKDIR /usr/share/kibana
# Wed, 16 Sep 2026 03:31:50 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 16 Sep 2026 03:31:50 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 16 Sep 2026 03:31:50 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:31:50 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 16 Sep 2026 03:31:50 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:31:51 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 16 Sep 2026 03:31:52 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 16 Sep 2026 03:31:52 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 16 Sep 2026 03:31:52 GMT
LABEL org.label-schema.build-date=2026-08-26T18:14:44.924Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=f8b192d79d9df731fc3811263f4461d842834c6a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.21 org.opencontainers.image.created=2026-08-26T18:14:44.924Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=f8b192d79d9df731fc3811263f4461d842834c6a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.21
# Wed, 16 Sep 2026 03:31:52 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 16 Sep 2026 03:31:52 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 16 Sep 2026 03:31:52 GMT
USER 1000
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58cae915c7067b550c731a1d56f827d68e7e7c8b561c32392ea4ce4564941b52`  
		Last Modified: Wed, 16 Sep 2026 03:32:59 GMT  
		Size: 9.4 MB (9414919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4432447c03c6157cb5327bfaa4bdd9b285e5403113bac851587a893f7f9b8105`  
		Last Modified: Wed, 16 Sep 2026 03:33:07 GMT  
		Size: 414.3 MB (414276129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cc4f409c15031ecf6bc0429dc669ae17dc52a2c8d95ef08b1d0efa17bfc2df4`  
		Last Modified: Wed, 16 Sep 2026 03:32:58 GMT  
		Size: 9.1 KB (9096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f150001b60cbae77803547e3257828666800614ee7295673a735a683024aaa`  
		Last Modified: Wed, 16 Sep 2026 03:32:59 GMT  
		Size: 16.5 MB (16460481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2414dbe4726443b6ceb425932c496bb84e9709307e1f7cd2c8deff8c2bdf0adc`  
		Last Modified: Wed, 16 Sep 2026 03:32:59 GMT  
		Size: 5.2 KB (5239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea5557c99644ec294d824624a8e2b1ad1db2cdc06fca0031678ab53f01143c84`  
		Last Modified: Wed, 16 Sep 2026 03:33:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0cc4a5bc9f984b0726b9f3c1aba57a0a51a73fdb90e7503fe2bb0f878d9315e`  
		Last Modified: Wed, 16 Sep 2026 03:33:00 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79db3a673136ae46848ac73a4e3f4e72c81996edde96b6aabb7b00e605737c0a`  
		Last Modified: Wed, 16 Sep 2026 03:33:01 GMT  
		Size: 4.8 KB (4811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1090ed76ee33fd172506945c9789df175c2dd7b213665769276facc30be43474`  
		Last Modified: Wed, 16 Sep 2026 03:33:02 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e60c14f1aeb92f5b47b6a791e2a13d5896af8c466ad85355ca64d9f662d3d8`  
		Last Modified: Wed, 16 Sep 2026 03:33:02 GMT  
		Size: 158.3 KB (158252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eff53e55efc37d81088267d44d9ff219a2b4ed1b4bcb4d291cb0e2d0d7eb145`  
		Last Modified: Wed, 16 Sep 2026 03:33:02 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.21` - unknown; unknown

```console
$ docker pull kibana@sha256:34bf30342504e57a37b49a66ffd67f57e5fad87a4835b09477af3a1e27b60fbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4890359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33903287b83fb0bc21eb9d1ad03de8fd1aa28dfe399bf1486f5f438f5aaa6645`

```dockerfile
```

-	Layers:
	-	`sha256:ffe0edd68bdd1b8bdc5ccb89ae574817cb0ef1c13e511c1f1600810a8c5333af`  
		Last Modified: Wed, 16 Sep 2026 03:32:58 GMT  
		Size: 4.8 MB (4849196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db68df3bc30d686482809e59ce9bd454fcc764fe36231b42fba8b4587671fc48`  
		Last Modified: Wed, 16 Sep 2026 03:32:58 GMT  
		Size: 41.2 KB (41163 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.6`

```console
$ docker pull kibana@sha256:2f1097723c29b2291c9dd0d9a5d4538355620d50c501ccd95bc5965d697f31b4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.6` - linux; amd64

```console
$ docker pull kibana@sha256:f3e50e00a1e1b099582981d0ea03323726c56a91ede218c2c3ec30ca3e635946
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **565.9 MB (565907232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb2fa9ae3eb2bd1d05ce208cc127a3aa52af448632b40dd145149cfcdbdabdf1`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:53:58 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 15 Sep 2026 22:53:58 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 15 Sep 2026 23:04:26 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 15 Sep 2026 23:04:27 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 15 Sep 2026 23:04:27 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 15 Sep 2026 23:04:27 GMT
RUN fc-cache -v # buildkit
# Tue, 15 Sep 2026 23:04:27 GMT
WORKDIR /usr/share/kibana
# Tue, 15 Sep 2026 23:04:27 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 15 Sep 2026 23:04:27 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 15 Sep 2026 23:04:27 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 23:04:27 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 15 Sep 2026 23:04:27 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:04:28 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 15 Sep 2026 23:04:29 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 15 Sep 2026 23:04:29 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 15 Sep 2026 23:04:29 GMT
LABEL org.label-schema.build-date=2026-08-26T20:30:47.515Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=692551ad493ed71169e295e2160446428ee00b15 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T20:30:47.515Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=692551ad493ed71169e295e2160446428ee00b15 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Tue, 15 Sep 2026 23:04:29 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 15 Sep 2026 23:04:29 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 15 Sep 2026 23:04:29 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 15 Sep 2026 23:04:29 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 15 Sep 2026 23:04:29 GMT
USER 1000
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77a0bef5824300e23f0e642cfa327904b7aad8d22b42ea458149cc4366bf35a`  
		Last Modified: Tue, 15 Sep 2026 23:06:01 GMT  
		Size: 19.3 MB (19319586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f6050d7bbc32b99ba9391d77c0b43ef1d58a34b47eb1622300db029e9475d0`  
		Last Modified: Tue, 15 Sep 2026 23:09:34 GMT  
		Size: 489.2 MB (489234509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8979476ad704a5d21814c2a8fb1b952484d58d6a796dd6a0dd265d15d33d9d6c`  
		Last Modified: Tue, 15 Sep 2026 23:05:42 GMT  
		Size: 9.5 KB (9528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:929379efc3021380802cafaa35f4917fe0c187e0b219322e4565eeea187bd17e`  
		Last Modified: Tue, 15 Sep 2026 23:06:00 GMT  
		Size: 16.5 MB (16460474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4836bae1a0405f64a535160cd23357f4a796cffd3dbeb4ffa14d6fb973579012`  
		Last Modified: Tue, 15 Sep 2026 23:05:54 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a9cbed8de6cea3840e3b70202986f670197ac0c6c0993e4303b9bb56733966d`  
		Last Modified: Tue, 15 Sep 2026 23:06:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49325d71c6d42d4c3ffd35f48fead4ac9e9a4ddd8d93ce4c348c47e166a28988`  
		Last Modified: Tue, 15 Sep 2026 23:06:21 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fa3a02bfada59b4d3c5781d51f8d69df752e82d64799975d48dc709a3129625`  
		Last Modified: Tue, 15 Sep 2026 23:06:21 GMT  
		Size: 4.9 KB (4927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8c9b7956dca2e3e3ba8ac7a78466665f32bb82bfbb3a303b990b291054bda6`  
		Last Modified: Tue, 15 Sep 2026 23:06:28 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:892f93b4e556991c218d53af43d6f80187bed48e361605205ab746a881282cb6`  
		Last Modified: Tue, 15 Sep 2026 23:06:33 GMT  
		Size: 74.5 KB (74546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e0943627baf34880072c2304c1602141e698010f012a9f3c88af43586123edd`  
		Last Modified: Tue, 15 Sep 2026 23:06:32 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:959b1660f7f7776dfa127b59888f75a722f5580da5390808344908e699beac11`  
		Last Modified: Tue, 15 Sep 2026 23:06:38 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.6` - unknown; unknown

```console
$ docker pull kibana@sha256:917c099cc837c06c3b69874e6b1716072142199f322e7f06e413df8b065b2735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5949496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca7ad8116d36fb2c282c29838a815ec6e816beedf8ed5a9dc2292851d37ca8c`

```dockerfile
```

-	Layers:
	-	`sha256:b69aed4a90cbc2f30d345192e47d0b3193c264b220c4be72de235b5c84268513`  
		Last Modified: Tue, 15 Sep 2026 23:05:43 GMT  
		Size: 5.9 MB (5906270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dcb8ab552e52a70c337a2f6637c0ec370fbf36063a371bff993f08907629863`  
		Last Modified: Tue, 15 Sep 2026 23:05:42 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.6` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:10140bb54f4375bcffb4f04ee38fbc4f43415d4cbea1760c597427015eb8b6f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **577.3 MB (577345962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8580672b1252ca4e01f8ddd9a3b0b5503981b4acbf32034d870afbca6599b7d4`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:32:10 GMT
ENV container oci
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:72fb2dc4c486c747a87584232d6df49829397aab078c7b53003fc02fe0742d2a in /      
# Tue, 15 Sep 2026 08:32:11 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:32:11 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:70bfa1e7dfaad5303fc10a9b7675f727b8b80ee73235d444355fbe0bc2bcf440 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:70bfa1e7dfaad5303fc10a9b7675f727b8b80ee73235d444355fbe0bc2bcf440 in /root/buildinfo/      
# Tue, 15 Sep 2026 08:32:11 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:31:49Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:31:49Z" "architecture"="aarch64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:31:49Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:43:01 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 15 Sep 2026 22:43:01 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:50:52 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 15 Sep 2026 22:50:52 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 15 Sep 2026 22:50:53 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 15 Sep 2026 22:50:53 GMT
RUN fc-cache -v # buildkit
# Tue, 15 Sep 2026 22:50:53 GMT
WORKDIR /usr/share/kibana
# Tue, 15 Sep 2026 22:50:53 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 15 Sep 2026 22:50:53 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 15 Sep 2026 22:50:53 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:50:53 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 15 Sep 2026 22:50:53 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:50:54 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 15 Sep 2026 22:50:55 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 15 Sep 2026 22:50:55 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 15 Sep 2026 22:50:55 GMT
LABEL org.label-schema.build-date=2026-08-26T20:30:47.515Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=692551ad493ed71169e295e2160446428ee00b15 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T20:30:47.515Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=692551ad493ed71169e295e2160446428ee00b15 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Tue, 15 Sep 2026 22:50:55 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 15 Sep 2026 22:50:55 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 15 Sep 2026 22:50:55 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 15 Sep 2026 22:50:55 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 15 Sep 2026 22:50:55 GMT
USER 1000
```

-	Layers:
	-	`sha256:edf54d88a9d386573b3ea6054762d75827e6380055074899aed1e5a2c810b3b7`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 38.8 MB (38799472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36eef02a9fb0017b45f213edc74ba97af3fafea7261142ef0c1e41e8643446a6`  
		Last Modified: Tue, 15 Sep 2026 22:52:21 GMT  
		Size: 19.3 MB (19263652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48d5af668503bfbbb15629db747b0b5fe3fec73450de266ce132256d9423e935`  
		Last Modified: Tue, 15 Sep 2026 22:52:30 GMT  
		Size: 502.7 MB (502725928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1d4870ec4dd05cfeac48831ae02bf7ff3bbc1d480ba777b39797d160ff3cd9`  
		Last Modified: Tue, 15 Sep 2026 22:52:20 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f9e2c840d08dbdb56924bcd61d9aadebfc9c670bde7ea5359504cd90f03dab`  
		Last Modified: Tue, 15 Sep 2026 22:52:21 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eda3588cdb4fb9ee4980c8074bf9b70d626e1a7371e1973c2c6b457ccb196c27`  
		Last Modified: Tue, 15 Sep 2026 22:52:22 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ebeae7c94d820ac9d0ebc389ee0425ff69db8a922a3e874d41449db2d686939`  
		Last Modified: Tue, 15 Sep 2026 22:52:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b06690754a0ab0e9452530c51c1bb8a4fde23c229f629a203b3e29471f23a25`  
		Last Modified: Tue, 15 Sep 2026 22:52:23 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34416ddee4797c4243a5b7572b6dabf65101789ce6585196b126e7ba33c3a3c4`  
		Last Modified: Tue, 15 Sep 2026 22:52:23 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4cb5c5370a5531f8c8098499ccfbfb9c31040f71014f8def9e577f88b90505`  
		Last Modified: Tue, 15 Sep 2026 22:52:24 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14cc1e20597822c61465c0e68e0d3e6a444c5d2e456c9da72675b35be959f0d5`  
		Last Modified: Tue, 15 Sep 2026 22:52:24 GMT  
		Size: 73.5 KB (73454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54168db940bcc43410d2a5da0d243cc12aadc7c8df25c4b46f4ecce6ed6cf196`  
		Last Modified: Tue, 15 Sep 2026 22:52:24 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39fbe8c8a2f695d6954bc005d30b476c1ed99cce01c7d5be891105546885f4b4`  
		Last Modified: Tue, 15 Sep 2026 22:52:25 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.6` - unknown; unknown

```console
$ docker pull kibana@sha256:7e1cdba21f3b61c6a32f13a11b82dd0add01c6cbda901df876fb9e8ace6d123b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5946642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208b42174533f506486e6ac432615b9bf6157f9bce43b3696b4a177930812afb`

```dockerfile
```

-	Layers:
	-	`sha256:904c67b447bc1b57570f622b2128d012437e1f7782ad84b37a0d3aac267020e8`  
		Last Modified: Tue, 15 Sep 2026 22:52:20 GMT  
		Size: 5.9 MB (5903160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4839f804bf56399e247d21deba398fbab9cbc5c3ba1e6d128aa450126542e763`  
		Last Modified: Tue, 15 Sep 2026 22:52:20 GMT  
		Size: 43.5 KB (43482 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.3`

```console
$ docker pull kibana@sha256:242256a693eacc94916e6f4ac078b1b9a9fd0a5f619018ddd7cdeeefae6a3e74
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.3` - linux; amd64

```console
$ docker pull kibana@sha256:71c2c421561a05d24021d63f40a2cdff433a52b3426261926cac291aa906de4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **560.9 MB (560915355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0ea72b6d1a70c5ffe84e5ff0753033ba73227bb4fd8bc8518bfa4346639f9bb`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:54:01 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 15 Sep 2026 22:54:01 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 15 Sep 2026 23:02:02 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 15 Sep 2026 23:02:03 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 15 Sep 2026 23:02:04 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 15 Sep 2026 23:02:04 GMT
RUN fc-cache -v # buildkit
# Tue, 15 Sep 2026 23:02:04 GMT
WORKDIR /usr/share/kibana
# Tue, 15 Sep 2026 23:02:04 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 15 Sep 2026 23:02:04 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 15 Sep 2026 23:02:04 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 23:02:04 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 15 Sep 2026 23:02:04 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:02:05 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 15 Sep 2026 23:02:06 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 15 Sep 2026 23:02:06 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 15 Sep 2026 23:02:06 GMT
LABEL org.label-schema.build-date=2026-09-01T14:33:18.580Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=2169f1de4c917fce03905cc3110f3f523e2184d2 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T14:33:18.580Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=2169f1de4c917fce03905cc3110f3f523e2184d2 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Tue, 15 Sep 2026 23:02:06 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 15 Sep 2026 23:02:06 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 15 Sep 2026 23:02:06 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 15 Sep 2026 23:02:06 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 15 Sep 2026 23:02:06 GMT
USER 1000
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4573489ea1c269c5931583bd8782449a3b24ec83cc6fabd533e619bc6661fb`  
		Last Modified: Tue, 15 Sep 2026 23:03:14 GMT  
		Size: 19.3 MB (19319643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc81b8c6d9ebd2ecf7f2ab293ab4ea749202b76f9bb59d192658abd4015e27b1`  
		Last Modified: Tue, 15 Sep 2026 23:03:22 GMT  
		Size: 484.2 MB (484242481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cdf06b8ed003499245dd18c883a8e0a5a270959e2d9364fcb846f33725775d1`  
		Last Modified: Tue, 15 Sep 2026 23:03:12 GMT  
		Size: 9.5 KB (9529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f8e55200cc330ae76a3a941bde389ac3bd1e4b0ceeddefebebc47c9b83f290`  
		Last Modified: Tue, 15 Sep 2026 23:03:14 GMT  
		Size: 16.5 MB (16460492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ea5a18dacab022805a56bda06c80d7c36ddbc6d49c9a46749c9301861e6f75`  
		Last Modified: Tue, 15 Sep 2026 23:03:14 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38171f5a5f498e590058756271178098ab3931ff026ce3001e3ff67d7afadfce`  
		Last Modified: Tue, 15 Sep 2026 23:03:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acd31d8238498e70bb00003d8148fe2ebad984535662023152a97fe6493e1598`  
		Last Modified: Tue, 15 Sep 2026 23:03:15 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67482b42dc9168e19766421aab0d49fac274a98a1fa89780513332ce83ea0456`  
		Last Modified: Tue, 15 Sep 2026 23:03:15 GMT  
		Size: 5.0 KB (5001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7a5c6be01b0142a068e23cbc864107f67388749405b342e6dda2c8f9b4b603`  
		Last Modified: Tue, 15 Sep 2026 23:03:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf491dc95cd77f5b35c1be065edeb3ce6f50391108ac16922681af88e9019293`  
		Last Modified: Tue, 15 Sep 2026 23:03:17 GMT  
		Size: 74.5 KB (74541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:460c9f107810f86008abecf1f6c58836f52d3e01d3fa448692b28ee58da0736a`  
		Last Modified: Tue, 15 Sep 2026 23:03:17 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf54147ebfed5e1430f834a7eba5e7287c1d23ba268518c372c230f19e4c91f3`  
		Last Modified: Tue, 15 Sep 2026 23:03:18 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.3` - unknown; unknown

```console
$ docker pull kibana@sha256:c36d25038f1b8535d06f050c893bfabe364296bf594418f99130a652ee68650f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6141071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3abf8dd288de9a2517e56e0c0432ac411c759cf2bd2be71f067d3049a0bce2e5`

```dockerfile
```

-	Layers:
	-	`sha256:14b93a6b1b763d94f078d10d00e664a052b4eb295bd802a8825679fc2e55b2bd`  
		Last Modified: Tue, 15 Sep 2026 23:03:13 GMT  
		Size: 6.1 MB (6097846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8159da7500353eacef35f96abeca89a69261dc1f6c4fdff9f1114f6efab95ef`  
		Last Modified: Tue, 15 Sep 2026 23:03:12 GMT  
		Size: 43.2 KB (43225 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.3` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:af8def862c3fd5aaddf32808c4bbb040f3b75fdc157a729cdeb98bb3cc86a044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **572.3 MB (572338300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a26688dbe55fa74a4201c10a2e0ef2a900d4d384968700a5b0e66955f28248ae`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:32:10 GMT
ENV container oci
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:72fb2dc4c486c747a87584232d6df49829397aab078c7b53003fc02fe0742d2a in /      
# Tue, 15 Sep 2026 08:32:11 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:32:11 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:70bfa1e7dfaad5303fc10a9b7675f727b8b80ee73235d444355fbe0bc2bcf440 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:70bfa1e7dfaad5303fc10a9b7675f727b8b80ee73235d444355fbe0bc2bcf440 in /root/buildinfo/      
# Tue, 15 Sep 2026 08:32:11 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:31:49Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:31:49Z" "architecture"="aarch64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:31:49Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:43:00 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 15 Sep 2026 22:43:00 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:50:08 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 15 Sep 2026 22:50:09 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 15 Sep 2026 22:50:09 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 15 Sep 2026 22:50:09 GMT
RUN fc-cache -v # buildkit
# Tue, 15 Sep 2026 22:50:09 GMT
WORKDIR /usr/share/kibana
# Tue, 15 Sep 2026 22:50:09 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 15 Sep 2026 22:50:09 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 15 Sep 2026 22:50:09 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:50:09 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 15 Sep 2026 22:50:09 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:50:10 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 15 Sep 2026 22:50:11 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 15 Sep 2026 22:50:11 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 15 Sep 2026 22:50:11 GMT
LABEL org.label-schema.build-date=2026-09-01T14:33:18.580Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=2169f1de4c917fce03905cc3110f3f523e2184d2 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T14:33:18.580Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=2169f1de4c917fce03905cc3110f3f523e2184d2 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Tue, 15 Sep 2026 22:50:11 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 15 Sep 2026 22:50:11 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 15 Sep 2026 22:50:11 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 15 Sep 2026 22:50:11 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 15 Sep 2026 22:50:11 GMT
USER 1000
```

-	Layers:
	-	`sha256:edf54d88a9d386573b3ea6054762d75827e6380055074899aed1e5a2c810b3b7`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 38.8 MB (38799472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dddb2166c10be89b5e72844010af90ba54cfb06bd8ca37fcf0dc57e0db0e886`  
		Last Modified: Tue, 15 Sep 2026 22:51:34 GMT  
		Size: 19.3 MB (19263742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dd624cb91cd42ba42d7fa3be7ec9c103d4a82992d43842f1ccf50de1826b62a`  
		Last Modified: Tue, 15 Sep 2026 22:51:44 GMT  
		Size: 497.7 MB (497718108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2864d83a318a312aa3e8af47462d7485f4bbee553658f417c7b15d2313121c8b`  
		Last Modified: Tue, 15 Sep 2026 22:51:33 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bcbf54528f2ad2e4763f41fd0ba2e29bfd6493d8f1a703cb6f585b293599d3a`  
		Last Modified: Tue, 15 Sep 2026 22:51:35 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85050e04d33109d560e4d5c33360044f4de506e645f5f7b308716f5cf00207f9`  
		Last Modified: Tue, 15 Sep 2026 22:51:37 GMT  
		Size: 5.2 KB (5220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e2b3c47804b8cb32e0be04d3cf32178e5dd961e413df45dbe32456b4d00cc6`  
		Last Modified: Tue, 15 Sep 2026 22:51:36 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518f92b02fc90aa093034041953aeaa7eb7b0c408321532445111b1d2d304009`  
		Last Modified: Tue, 15 Sep 2026 22:51:37 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:691cdce24a31dc6e466499f2f2bb0eceb422331919bb8b4d74cf6279ffca66c4`  
		Last Modified: Tue, 15 Sep 2026 22:51:38 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dda564feca12b26dcf6d116e20d4d04ba8502f25663ba65845bc956cfd8f3a92`  
		Last Modified: Tue, 15 Sep 2026 22:51:40 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ea4e56dae7e8ced421430a6e7c50fb8ec97c64857d6a4a1f0283b6810a3c2e`  
		Last Modified: Tue, 15 Sep 2026 22:51:40 GMT  
		Size: 73.5 KB (73451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa0acdf0743560b0a0c112c611b83a537c75c51e4c7fc3b616a05312890d6b2`  
		Last Modified: Tue, 15 Sep 2026 22:51:42 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6e75006a8344adec92a925e6ec10188e59ca6a7fb058228074498dc1fee66e0`  
		Last Modified: Tue, 15 Sep 2026 22:51:41 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.3` - unknown; unknown

```console
$ docker pull kibana@sha256:72d0ec034f150c13d440e90be17b2e7ac3aea105f13e5c4a626a98c51d015407
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6138219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:023b31bff35d45070f71530beaca2c20e22e6d95d5478cb22fe7ffd260e72805`

```dockerfile
```

-	Layers:
	-	`sha256:49efe7ffbb9591c2fb6fc502b7479308bb47c20203e506a7a48fe8835aa9c0cc`  
		Last Modified: Tue, 15 Sep 2026 22:51:34 GMT  
		Size: 6.1 MB (6094736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27bfab74b845dcf7a94c8d0e3305737f15a7347571f6acd6619be4a9e90c4afc`  
		Last Modified: Tue, 15 Sep 2026 22:51:34 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
