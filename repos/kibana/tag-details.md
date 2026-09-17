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
$ docker pull kibana@sha256:3147a42d65e1db07184c7272539e9af756664cc7a65ae031fd33fd101b0f23d2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.6` - linux; amd64

```console
$ docker pull kibana@sha256:31368905c4ef539daa4f030cce3b7e8624cba650f4670c329e261a23db386b7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **565.8 MB (565814071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16f904f9695dee01cda5a8959b6c411151e4e467abb5ec1f6407fdae598cf7f0`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.openshift.expose-services=""
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 16 Sep 2026 08:14:47 GMT
ENV container oci
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:b8d2e4702aa4e2e0f81f97ab3a96785119f9cab5f11a12e6f35f97263fc80089 in /      
# Wed, 16 Sep 2026 08:14:48 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 16 Sep 2026 08:14:48 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:0d75961e3db2326a48bbcf23c2e4ea4e05da817cf04277234a6d96480c0cf5b7 in /usr/share/buildinfo/      
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:0d75961e3db2326a48bbcf23c2e4ea4e05da817cf04277234a6d96480c0cf5b7 in /root/buildinfo/      
# Wed, 16 Sep 2026 08:14:48 GMT
LABEL "org.opencontainers.image.created"="2026-09-16T08:14:20Z" "org.opencontainers.image.revision"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "build-date"="2026-09-16T08:14:20Z" "architecture"="x86_64" "vcs-ref"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "vcs-type"="git" "release"="1789546276"org.opencontainers.image.created=2026-09-16T08:14:20Z,org.opencontainers.image.revision=28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee
# Thu, 17 Sep 2026 18:55:49 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 17 Sep 2026 18:55:49 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Thu, 17 Sep 2026 19:06:18 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 17 Sep 2026 19:06:19 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 17 Sep 2026 19:06:19 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 17 Sep 2026 19:06:19 GMT
RUN fc-cache -v # buildkit
# Thu, 17 Sep 2026 19:06:19 GMT
WORKDIR /usr/share/kibana
# Thu, 17 Sep 2026 19:06:19 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 17 Sep 2026 19:06:19 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 17 Sep 2026 19:06:19 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 19:06:19 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 17 Sep 2026 19:06:19 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 19:06:20 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 17 Sep 2026 19:06:21 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 17 Sep 2026 19:06:21 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 17 Sep 2026 19:06:21 GMT
LABEL org.label-schema.build-date=2026-08-26T20:30:47.515Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=692551ad493ed71169e295e2160446428ee00b15 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T20:30:47.515Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=692551ad493ed71169e295e2160446428ee00b15 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Thu, 17 Sep 2026 19:06:21 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Thu, 17 Sep 2026 19:06:22 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 17 Sep 2026 19:06:22 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 17 Sep 2026 19:06:22 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 17 Sep 2026 19:06:22 GMT
USER 1000
```

-	Layers:
	-	`sha256:b66f4afff961364e2b31840faeac9f4cf40a138156bc5adbd4190044ff5160c0`  
		Last Modified: Wed, 16 Sep 2026 09:31:28 GMT  
		Size: 40.7 MB (40703783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ced46ea9f1eade34f32f77745b1995c968eedb1a095ee3188f89db2b386da83`  
		Last Modified: Thu, 17 Sep 2026 19:07:34 GMT  
		Size: 19.3 MB (19314361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f272c6299edefb0550fc8a09932955a624846d9112d744166a08fc2b6b8214b1`  
		Last Modified: Thu, 17 Sep 2026 19:07:42 GMT  
		Size: 489.2 MB (489237498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b618618d3744f2148e127aeb207594d7758810606dbbdfbe8aa913d2f09adc5e`  
		Last Modified: Thu, 17 Sep 2026 19:07:32 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9104e25f8bbe4a87caa6f6ac4e373c15443c6a2e328b7e947b2cc27b10e7ce83`  
		Last Modified: Thu, 17 Sep 2026 19:07:33 GMT  
		Size: 16.5 MB (16460484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a0e68e2c75c7b4c25618cab33c62041c35ab0993b73104f8c8bf61d0a10500`  
		Last Modified: Thu, 17 Sep 2026 19:07:34 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ac6dc3e7de50f4aedc831c20a273c6d8c2d3a9eafec309bed828b9d0bcd10dd`  
		Last Modified: Thu, 17 Sep 2026 19:07:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9463170db8fc048547545479d70b4a40026b41ad2f5e4f18789e7fcc5679bb5a`  
		Last Modified: Thu, 17 Sep 2026 19:07:35 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeebe93b173b3dc85fe72257e15139adfd72949a8c3b631fd40bd1550f1cf639`  
		Last Modified: Thu, 17 Sep 2026 19:07:35 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ed95f5869754f68d41a3d79063855fcd29099b20499a94c1693775810306cc3`  
		Last Modified: Thu, 17 Sep 2026 19:07:36 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a0d1286b723fd7b8b58ba20c68101fe223fdcbff618446a54f08a1a0622ae0`  
		Last Modified: Thu, 17 Sep 2026 19:07:36 GMT  
		Size: 74.5 KB (74548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b993f61832881b8605acb2ba865dc7440c88010aa951390dcfad58a42b93a1ed`  
		Last Modified: Thu, 17 Sep 2026 19:07:37 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9147aaa53bb1defe125d71c94eaf11272d76dad337e5e6476ab575b2a8c0abd`  
		Last Modified: Thu, 17 Sep 2026 19:07:38 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.6` - unknown; unknown

```console
$ docker pull kibana@sha256:1324ce3e67f7f1b045a2505962fb043ac02486e00c31b82d245634813a152666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5949495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0962bceaf8da1741fbf7a788f76e35a25aaad89076b8f14a456e1fba8e3ba74`

```dockerfile
```

-	Layers:
	-	`sha256:fa1204a5f3f3a5c806ec59e4a8a2d5974b0f716fb23058f12c45cdcf76d19899`  
		Last Modified: Thu, 17 Sep 2026 19:07:33 GMT  
		Size: 5.9 MB (5906270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a7f858f9f964af565f0b58d22f615a1e780d9a419a23d5e688a725b96f80f06`  
		Last Modified: Thu, 17 Sep 2026 19:07:32 GMT  
		Size: 43.2 KB (43225 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.6` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:923eda74626317f218a171c1267afa5c86804c9e5e659d8bd689760695535d32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **577.3 MB (577312623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27f52af5deaba8b5812ddb39ac0b8ef6d34fb3dc335a72a212fd9291c26ff08`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.openshift.expose-services=""
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 16 Sep 2026 08:17:25 GMT
ENV container oci
# Wed, 16 Sep 2026 08:17:25 GMT
COPY dir:247e1a1b65ffe42d0e02569b201e0a80c3d58c5012cc85d5fca29e1996ccab32 in /      
# Wed, 16 Sep 2026 08:17:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 16 Sep 2026 08:17:26 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:17:26 GMT
COPY dir:6618fcc9c9f252e47fc39914f7cb7d1d47e47d2db896a1383df6d9add39d7c22 in /usr/share/buildinfo/      
# Wed, 16 Sep 2026 08:17:26 GMT
COPY dir:6618fcc9c9f252e47fc39914f7cb7d1d47e47d2db896a1383df6d9add39d7c22 in /root/buildinfo/      
# Wed, 16 Sep 2026 08:17:26 GMT
LABEL "org.opencontainers.image.created"="2026-09-16T08:17:03Z" "org.opencontainers.image.revision"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "build-date"="2026-09-16T08:17:03Z" "architecture"="aarch64" "vcs-ref"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "vcs-type"="git" "release"="1789546276"org.opencontainers.image.created=2026-09-16T08:17:03Z,org.opencontainers.image.revision=28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee
# Thu, 17 Sep 2026 18:55:11 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 17 Sep 2026 18:55:11 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Thu, 17 Sep 2026 19:03:42 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 17 Sep 2026 19:03:43 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 17 Sep 2026 19:03:43 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 17 Sep 2026 19:03:43 GMT
RUN fc-cache -v # buildkit
# Thu, 17 Sep 2026 19:03:43 GMT
WORKDIR /usr/share/kibana
# Thu, 17 Sep 2026 19:03:43 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 17 Sep 2026 19:03:43 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 17 Sep 2026 19:03:43 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 19:03:43 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 17 Sep 2026 19:03:43 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 19:03:45 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 17 Sep 2026 19:03:46 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 17 Sep 2026 19:03:46 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 17 Sep 2026 19:03:46 GMT
LABEL org.label-schema.build-date=2026-08-26T20:30:47.515Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=692551ad493ed71169e295e2160446428ee00b15 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T20:30:47.515Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=692551ad493ed71169e295e2160446428ee00b15 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Thu, 17 Sep 2026 19:03:46 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Thu, 17 Sep 2026 19:03:46 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 17 Sep 2026 19:03:46 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 17 Sep 2026 19:03:46 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 17 Sep 2026 19:03:46 GMT
USER 1000
```

-	Layers:
	-	`sha256:36e72d37accbc857387599416b2fbab8fba8dd4b3f3b465ab05e57367cbe05fd`  
		Last Modified: Wed, 16 Sep 2026 09:33:21 GMT  
		Size: 38.8 MB (38782783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ca2917868855f09126b7bc210d41bf7336f592547b0d7055e2e01b62588746`  
		Last Modified: Thu, 17 Sep 2026 19:05:11 GMT  
		Size: 19.3 MB (19256052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84110342470571c418f104493a6b9b1da2c9c69b54419b0e0b1ead1d3e3db9c1`  
		Last Modified: Thu, 17 Sep 2026 19:05:20 GMT  
		Size: 502.7 MB (502716870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a90ad31a8abbfb41033faf24d0005d84ff13b0623b1594a5bd8fb24531d352`  
		Last Modified: Thu, 17 Sep 2026 19:05:10 GMT  
		Size: 9.1 KB (9103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d388398feff87bdc69b8c6db78c0941c17015376b77e2d6abd96b6f7a5354e`  
		Last Modified: Thu, 17 Sep 2026 19:05:11 GMT  
		Size: 16.5 MB (16460485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f05cce1de399fb61f4eb06f36bf7a15497b22d0289918083e13b478c85ba6d`  
		Last Modified: Thu, 17 Sep 2026 19:05:11 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51cb2b4f1450b8ef51a7cabfabb1cd8c43eeccd42e0ecd6c1b5fd5edcf536cb`  
		Last Modified: Thu, 17 Sep 2026 19:05:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a024fb62b797000099485fa6e69fa802a79dbec05b30eafd58c652eff47edae4`  
		Last Modified: Thu, 17 Sep 2026 19:05:13 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:692285293ebf69d3f3c95df83da57041823a2436a47a8b4492674a4240ef9c43`  
		Last Modified: Thu, 17 Sep 2026 19:05:13 GMT  
		Size: 4.9 KB (4934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e92ed6ce7d8b49360ec307270c419fc86657c2c95ce889997e006315ca19a25`  
		Last Modified: Thu, 17 Sep 2026 19:05:14 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e3a42e659c2aa5cb44c27493fa6358d48cd393be97360cf4a8567213f6e8328`  
		Last Modified: Thu, 17 Sep 2026 19:05:14 GMT  
		Size: 73.5 KB (73456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c037f778ec3ae4bf9d34eec5fca9ac4be47a098e0ac4d9504b3a4463f38e45b3`  
		Last Modified: Thu, 17 Sep 2026 19:05:14 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e2c704a1e08dfd714954f3f075c50318086566ae7255d6a34fecdbd39966241`  
		Last Modified: Thu, 17 Sep 2026 19:05:15 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.6` - unknown; unknown

```console
$ docker pull kibana@sha256:59a8fb66f4819304fe81ec1ae208ca3e2a19568071779b5b50f17be1ac6d1118
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5946643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f456b1193df825cc4e85e9ee925d0bc62ff475314cce111099f84538b530bf7c`

```dockerfile
```

-	Layers:
	-	`sha256:a11d0051e08666fa668bb44be893eeadc4268bb62310b7daca1804d0cdf106a6`  
		Last Modified: Thu, 17 Sep 2026 19:05:10 GMT  
		Size: 5.9 MB (5903160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8146241e4badb69eff07b7a242717c15a36e35fbf83c5161e427ca931d949299`  
		Last Modified: Thu, 17 Sep 2026 19:05:10 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.3`

```console
$ docker pull kibana@sha256:4e74d328de5d1049173713dfc2d4a4ceef3f3b3bb12939dff29cd60974f687e7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.3` - linux; amd64

```console
$ docker pull kibana@sha256:62333b76ba44c9490d417c26e69246e21bbcf7a24bfdd6b9e7b6662fae134cd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **560.8 MB (560817248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7aeccade0a02eb7e830a8592f52dc5fa315c9d98d9b3d6e899db981550e67e`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.openshift.expose-services=""
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 16 Sep 2026 08:14:47 GMT
ENV container oci
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:b8d2e4702aa4e2e0f81f97ab3a96785119f9cab5f11a12e6f35f97263fc80089 in /      
# Wed, 16 Sep 2026 08:14:48 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 16 Sep 2026 08:14:48 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:0d75961e3db2326a48bbcf23c2e4ea4e05da817cf04277234a6d96480c0cf5b7 in /usr/share/buildinfo/      
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:0d75961e3db2326a48bbcf23c2e4ea4e05da817cf04277234a6d96480c0cf5b7 in /root/buildinfo/      
# Wed, 16 Sep 2026 08:14:48 GMT
LABEL "org.opencontainers.image.created"="2026-09-16T08:14:20Z" "org.opencontainers.image.revision"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "build-date"="2026-09-16T08:14:20Z" "architecture"="x86_64" "vcs-ref"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "vcs-type"="git" "release"="1789546276"org.opencontainers.image.created=2026-09-16T08:14:20Z,org.opencontainers.image.revision=28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee
# Thu, 17 Sep 2026 18:55:52 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 17 Sep 2026 18:55:52 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Thu, 17 Sep 2026 19:04:43 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 17 Sep 2026 19:04:43 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 17 Sep 2026 19:04:43 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 17 Sep 2026 19:04:44 GMT
RUN fc-cache -v # buildkit
# Thu, 17 Sep 2026 19:04:44 GMT
WORKDIR /usr/share/kibana
# Thu, 17 Sep 2026 19:04:44 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 17 Sep 2026 19:04:44 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 17 Sep 2026 19:04:44 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 19:04:44 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 17 Sep 2026 19:04:44 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 19:04:44 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 17 Sep 2026 19:04:45 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 17 Sep 2026 19:04:45 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 17 Sep 2026 19:04:45 GMT
LABEL org.label-schema.build-date=2026-09-01T14:33:18.580Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=2169f1de4c917fce03905cc3110f3f523e2184d2 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T14:33:18.580Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=2169f1de4c917fce03905cc3110f3f523e2184d2 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Thu, 17 Sep 2026 19:04:45 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Thu, 17 Sep 2026 19:04:45 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 17 Sep 2026 19:04:45 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 17 Sep 2026 19:04:45 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 17 Sep 2026 19:04:45 GMT
USER 1000
```

-	Layers:
	-	`sha256:b66f4afff961364e2b31840faeac9f4cf40a138156bc5adbd4190044ff5160c0`  
		Last Modified: Wed, 16 Sep 2026 09:31:28 GMT  
		Size: 40.7 MB (40703783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eac338d7ca2c07a1f8de5b5df558ab15c044d7946098fd3884b139a48277d62`  
		Last Modified: Thu, 17 Sep 2026 19:05:58 GMT  
		Size: 19.3 MB (19314704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3353a898e59d932cd2569017fe44a159c41863ee1086a39885091a51b4aba621`  
		Last Modified: Thu, 17 Sep 2026 19:06:18 GMT  
		Size: 484.2 MB (484240259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d6c2114819f0b3001a4348d67f6d589a33ace4aa414ca21a4d6a678d758059`  
		Last Modified: Thu, 17 Sep 2026 19:05:52 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e0bd410b2db9aa434cc77cb3ea2a9b0f30eaa9eebdf6fdcaa1e6b811ca46ddc`  
		Last Modified: Thu, 17 Sep 2026 19:05:57 GMT  
		Size: 16.5 MB (16460485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e287cd1ab942ae191402d01545b62427e2a90d100852d9f8001b3eb52cbb78f`  
		Last Modified: Thu, 17 Sep 2026 19:05:55 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3269000756dc463432d5c00bb323a3d7b92b9840160a494a341dfcfbc6e3dd0`  
		Last Modified: Thu, 17 Sep 2026 19:05:58 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4732b2c02b3189ad8fd828828d813d17b705a65774b8bec5a293227b48e91c87`  
		Last Modified: Thu, 17 Sep 2026 19:05:59 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4ef41f6655d232419101a7229ab61f1c4b2b8e184c34b6c4a11d41b713c815`  
		Last Modified: Thu, 17 Sep 2026 19:06:00 GMT  
		Size: 5.0 KB (5003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:950aae6d8a6a254eae84a96764fd8787fe72f7be68412f15460d19d52073492e`  
		Last Modified: Thu, 17 Sep 2026 19:06:00 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:507fb5fdc8e98c3fe26aa76c77bef53c9fa75dc48e64922fb4373831bc39cde9`  
		Last Modified: Thu, 17 Sep 2026 19:06:01 GMT  
		Size: 74.5 KB (74547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f140f989e3412ee754fa89dcb6ee4a2627413bd99212eab609f59021add879`  
		Last Modified: Thu, 17 Sep 2026 19:06:02 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:803c1bc40188af7ba988744f8b1e15c75e223f08a4a4264e3a1526d8f0d482a7`  
		Last Modified: Thu, 17 Sep 2026 19:06:02 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.3` - unknown; unknown

```console
$ docker pull kibana@sha256:4161df63cf402b81f8f37fc68d13cdad8e7f1229d62aac51eda0a6ed92a1c9c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6141072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c94313dd00a9a0261ff91d71cba6d058c59ed1dd430d312041c73df0c0c2a849`

```dockerfile
```

-	Layers:
	-	`sha256:c89a43bce104a2dc226893afc2fb77dac34b3ef30a826dc0515938aba885d055`  
		Last Modified: Thu, 17 Sep 2026 19:05:54 GMT  
		Size: 6.1 MB (6097846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bc538ac4bac8c89cfdd57f984be978d073fc800e98a63899ba916949fb4b13f`  
		Last Modified: Thu, 17 Sep 2026 19:05:52 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.3` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:3b29a6037d815ed0e0dfc4261feb80c1b86b23a9e9f2d1912886baa9d9b3fa3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **572.3 MB (572311082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccea05a8c1a2c85108036c97be9105a4683980e2af824cf1abc63f672162bf7b`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.openshift.expose-services=""
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 16 Sep 2026 08:17:25 GMT
ENV container oci
# Wed, 16 Sep 2026 08:17:25 GMT
COPY dir:247e1a1b65ffe42d0e02569b201e0a80c3d58c5012cc85d5fca29e1996ccab32 in /      
# Wed, 16 Sep 2026 08:17:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 16 Sep 2026 08:17:26 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:17:26 GMT
COPY dir:6618fcc9c9f252e47fc39914f7cb7d1d47e47d2db896a1383df6d9add39d7c22 in /usr/share/buildinfo/      
# Wed, 16 Sep 2026 08:17:26 GMT
COPY dir:6618fcc9c9f252e47fc39914f7cb7d1d47e47d2db896a1383df6d9add39d7c22 in /root/buildinfo/      
# Wed, 16 Sep 2026 08:17:26 GMT
LABEL "org.opencontainers.image.created"="2026-09-16T08:17:03Z" "org.opencontainers.image.revision"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "build-date"="2026-09-16T08:17:03Z" "architecture"="aarch64" "vcs-ref"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "vcs-type"="git" "release"="1789546276"org.opencontainers.image.created=2026-09-16T08:17:03Z,org.opencontainers.image.revision=28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee
# Thu, 17 Sep 2026 18:55:11 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 17 Sep 2026 18:55:11 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Thu, 17 Sep 2026 19:02:20 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 17 Sep 2026 19:02:20 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 17 Sep 2026 19:02:21 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 17 Sep 2026 19:02:21 GMT
RUN fc-cache -v # buildkit
# Thu, 17 Sep 2026 19:02:21 GMT
WORKDIR /usr/share/kibana
# Thu, 17 Sep 2026 19:02:21 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 17 Sep 2026 19:02:21 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 17 Sep 2026 19:02:21 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 19:02:21 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 17 Sep 2026 19:02:21 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 19:02:22 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 17 Sep 2026 19:02:23 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 17 Sep 2026 19:02:23 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 17 Sep 2026 19:02:23 GMT
LABEL org.label-schema.build-date=2026-09-01T14:33:18.580Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=2169f1de4c917fce03905cc3110f3f523e2184d2 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T14:33:18.580Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=2169f1de4c917fce03905cc3110f3f523e2184d2 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Thu, 17 Sep 2026 19:02:23 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Thu, 17 Sep 2026 19:02:23 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 17 Sep 2026 19:02:23 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 17 Sep 2026 19:02:23 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 17 Sep 2026 19:02:23 GMT
USER 1000
```

-	Layers:
	-	`sha256:36e72d37accbc857387599416b2fbab8fba8dd4b3f3b465ab05e57367cbe05fd`  
		Last Modified: Wed, 16 Sep 2026 09:33:21 GMT  
		Size: 38.8 MB (38782783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17df02667e684da1bde2654ee38dff0795526c35cf638fb524c90e5c2ee42928`  
		Last Modified: Thu, 17 Sep 2026 19:03:46 GMT  
		Size: 19.3 MB (19256085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52d791445fe56e6b6d2f16240b8f61134da2c7f697dc8554a7d653a2c70bf47e`  
		Last Modified: Thu, 17 Sep 2026 19:03:54 GMT  
		Size: 497.7 MB (497715229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dff53d10ecb89a46558e06451aa9ff49339cf2109eb9dfbe371065ba0d001d6f`  
		Last Modified: Thu, 17 Sep 2026 19:03:44 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfc3b540655628d86595cb01f03fdda202e0b21cce06a2d60cb7a3370d1261aa`  
		Last Modified: Thu, 17 Sep 2026 19:03:45 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a01473c0e961cf22cd87bd105e96379c838552101d8fb0867d4f58716640681`  
		Last Modified: Thu, 17 Sep 2026 19:03:45 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9506a874f8f6224fda1451fce083662fe4aae8f388595180c87018211e3c52d4`  
		Last Modified: Thu, 17 Sep 2026 19:03:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cf16efe2f557e319c991e691ec5ff0bcee29ddaf27a3af404229a041d5d91b0`  
		Last Modified: Thu, 17 Sep 2026 19:03:47 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5711b7b0b5ce706b408e93a3df1f8ba75ee01c2d6bd4bbe77dd4345067dc9d0b`  
		Last Modified: Thu, 17 Sep 2026 19:03:47 GMT  
		Size: 5.0 KB (5008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fca9e594b4a3e08637d337f2d36b644e64a052ba0f5edab15416d391cc93d95`  
		Last Modified: Thu, 17 Sep 2026 19:03:48 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:565012145933a148f6f6a2ff9ce149c1010c0da8ee76b8a5729bc61ca413b806`  
		Last Modified: Thu, 17 Sep 2026 19:03:48 GMT  
		Size: 73.5 KB (73456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c645472f2f90497f8c7090587428221e5c2fe4a35622bb8650d9088e81e863b`  
		Last Modified: Thu, 17 Sep 2026 19:03:48 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd0ddb85f0f93ee4ca97cd6ab37c3a708ebbc208a23dd732a52472669d4420c`  
		Last Modified: Thu, 17 Sep 2026 19:03:49 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.3` - unknown; unknown

```console
$ docker pull kibana@sha256:f74d521d9b5448af191650bbcd51f465c77fb138de557c80734206f65e703244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6138219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e370916285a24976c7485a951588323cb390a4635f79015b720a11359cc72759`

```dockerfile
```

-	Layers:
	-	`sha256:2f871eb9a49aaff4a04ebec92bcebe28bbc9be2c4ed88851eb8e97450ae9c4a0`  
		Last Modified: Thu, 17 Sep 2026 19:03:45 GMT  
		Size: 6.1 MB (6094736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d0f9c4189d31da3754e66f5ce253d038e4e961ed794c58ea22cadefd6f35748`  
		Last Modified: Thu, 17 Sep 2026 19:03:44 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
