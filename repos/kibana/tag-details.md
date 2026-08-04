<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.19`](#kibana81919)
-	[`kibana:9.3.8`](#kibana938)
-	[`kibana:9.4.4`](#kibana944)

## `kibana:8.19.19`

```console
$ docker pull kibana@sha256:8ab9dd2abb30a44d93f997125170ac372a6365bddb356629b3a83a7048864817
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:8.19.19` - linux; amd64

```console
$ docker pull kibana@sha256:b258e1214e1ad92b35439b8e9451019962e8fc21cacff3baff446157232299a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.9 MB (456870579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e67e09e6b37ac86379d57e66711b80261ff2973a25c306d1454fa18e152c28eb`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:12 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 04 Aug 2026 01:41:12 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:49:35 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 04 Aug 2026 01:49:36 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 04 Aug 2026 01:49:36 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 04 Aug 2026 01:49:36 GMT
RUN fc-cache -v # buildkit
# Tue, 04 Aug 2026 01:49:36 GMT
WORKDIR /usr/share/kibana
# Tue, 04 Aug 2026 01:49:36 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 04 Aug 2026 01:49:36 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 04 Aug 2026 01:49:36 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:49:36 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 04 Aug 2026 01:49:36 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:49:37 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 04 Aug 2026 01:49:38 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 04 Aug 2026 01:49:38 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 04 Aug 2026 01:49:38 GMT
LABEL org.label-schema.build-date=2026-07-15T18:11:08.890Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=9bed9b7c05fe39507eb73d1a334ca96aa0c32cee org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.19 org.opencontainers.image.created=2026-07-15T18:11:08.890Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=9bed9b7c05fe39507eb73d1a334ca96aa0c32cee org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.19
# Tue, 04 Aug 2026 01:49:38 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 04 Aug 2026 01:49:38 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 04 Aug 2026 01:49:38 GMT
USER 1000
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec8855057b9aaf649765b137c0529d3bc7edee84ed9bd2e2ab6b573f25f55ed6`  
		Last Modified: Tue, 04 Aug 2026 01:50:39 GMT  
		Size: 11.8 MB (11800612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41e4714d4549248d9bc3178b977d1c0ce62904637c5d5a89bf9a30fc3b62ca3`  
		Last Modified: Tue, 04 Aug 2026 01:50:47 GMT  
		Size: 398.7 MB (398674855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c288d0b1cbbe30a4e4fb2685a12ad7e962802d9200d71144eb5ae77cfc0e8fc`  
		Last Modified: Tue, 04 Aug 2026 01:50:38 GMT  
		Size: 9.5 KB (9528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1155aa620b603e89341cce5e5d756bb2b18ffa052799eb38ab8651ac88ac412`  
		Last Modified: Tue, 04 Aug 2026 01:50:39 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11bf35f83cdb39607126e90c848a1650979c6719b11adeaf37763eaa62235418`  
		Last Modified: Tue, 04 Aug 2026 01:50:40 GMT  
		Size: 5.2 KB (5239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b179ddc5132c642e3730b862ab0aa7117759b221abe0c105757b7f9bc48a8ba`  
		Last Modified: Tue, 04 Aug 2026 01:50:41 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dcc97f2c678efcfa4039b1f57a5c60acd8e17fabd410bccd161568f05c59911`  
		Last Modified: Tue, 04 Aug 2026 01:50:41 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d95fad5c77483a4ed52d299984b0f0c0f63e18443a9655634e6190a2c1dc3cc`  
		Last Modified: Tue, 04 Aug 2026 01:50:41 GMT  
		Size: 4.8 KB (4821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce45537fab10a996ad6a3ce24f5791bac9edfd4c74a05b6923b27b895e6e191d`  
		Last Modified: Tue, 04 Aug 2026 01:50:42 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:066a41db6fc125cd2fbbd2902fb3bc232ac43731763869da6cd6061814a74428`  
		Last Modified: Tue, 04 Aug 2026 01:50:42 GMT  
		Size: 161.7 KB (161743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e69e4f5b54aa3f0b6c62b47833f5321d0f05398fb4604abdacb9290841eef8b`  
		Last Modified: Tue, 04 Aug 2026 01:50:43 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.19` - unknown; unknown

```console
$ docker pull kibana@sha256:9fbba9055160d8e85805925ba58bd94af0d2746a7d15753c0d78e1415414b0e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4953622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b295ef80a4ea4759726e6fc390cfc3b3d5b5e325c677777d79e8c22d0147cc`

```dockerfile
```

-	Layers:
	-	`sha256:efb37a1b28c5ac1ad21667acf51cf3a470754347c6910eb588a551a1577bddaa`  
		Last Modified: Tue, 04 Aug 2026 01:50:39 GMT  
		Size: 4.9 MB (4912695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43aad106522a79199bbb303100136f7e894043e7b79b6a5b888a48ea07a0803b`  
		Last Modified: Tue, 04 Aug 2026 01:50:38 GMT  
		Size: 40.9 KB (40927 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:8.19.19` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:6c277b9df1128ad0bf77e18ceebccdf6d6cdfbb683122641b9f1125c08dcd472
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.5 MB (466532554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee019f0d6ef9b40d75c12e4ace1414f4a0b4d608e9961926f2d054d7c3de64a`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:21 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 04 Aug 2026 01:41:21 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:07 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 04 Aug 2026 01:48:08 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 04 Aug 2026 01:48:08 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 04 Aug 2026 01:48:08 GMT
RUN fc-cache -v # buildkit
# Tue, 04 Aug 2026 01:48:08 GMT
WORKDIR /usr/share/kibana
# Tue, 04 Aug 2026 01:48:08 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 04 Aug 2026 01:48:08 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 04 Aug 2026 01:48:08 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:48:08 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 04 Aug 2026 01:48:08 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:48:09 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 04 Aug 2026 01:48:10 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 04 Aug 2026 01:48:10 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 04 Aug 2026 01:48:10 GMT
LABEL org.label-schema.build-date=2026-07-15T18:11:08.890Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=9bed9b7c05fe39507eb73d1a334ca96aa0c32cee org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.19 org.opencontainers.image.created=2026-07-15T18:11:08.890Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=9bed9b7c05fe39507eb73d1a334ca96aa0c32cee org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.19
# Tue, 04 Aug 2026 01:48:10 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 04 Aug 2026 01:48:10 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 04 Aug 2026 01:48:10 GMT
USER 1000
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f93b45a6dfc5c4d86aa5f3fa2e414ee06a49888844963f18f51e3ed6b9c4516`  
		Last Modified: Tue, 04 Aug 2026 01:49:20 GMT  
		Size: 9.4 MB (9411326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a25c432b2e67129f02c61e82d0110e5a14c8a553f3a809ea934119a93da865`  
		Last Modified: Tue, 04 Aug 2026 01:49:27 GMT  
		Size: 411.6 MB (411594320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e8511b1840150e2f34bd844bb402b1e7731dd56ddff50f8eaca825f1d0661f`  
		Last Modified: Tue, 04 Aug 2026 01:49:19 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621df03d47a31d07a688ad2e0b88a35f6a76d2d4cc12ed4c3720fedbdedda289`  
		Last Modified: Tue, 04 Aug 2026 01:49:20 GMT  
		Size: 16.5 MB (16460484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:958a860efb81715e1b744219feb857d94a45d407685c851da225e6dc17398244`  
		Last Modified: Tue, 04 Aug 2026 01:49:21 GMT  
		Size: 5.2 KB (5240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26981d2b27ab23760f60459e7d9bd7b4b7abb6f9a9c49f8c958e3bf802dfa47d`  
		Last Modified: Tue, 04 Aug 2026 01:49:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dd21b16616e3acfe93650b2aae721ba8763f5bccebb73f83194d6387dd4e86a`  
		Last Modified: Tue, 04 Aug 2026 01:49:22 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8fc3b05a04503e2bad33f09cafdd52e54ab0b17272b1762b7d148a882ce9ade`  
		Last Modified: Tue, 04 Aug 2026 01:49:22 GMT  
		Size: 4.8 KB (4821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b646380b9f7d84b51dc172620e8941c76fd460621a104456c07f2153f4e7313c`  
		Last Modified: Tue, 04 Aug 2026 01:49:23 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021cf8bdfbde10fbbe38d94bb3cb500d849e55ce26100330261db7a13da53f5c`  
		Last Modified: Tue, 04 Aug 2026 01:49:23 GMT  
		Size: 158.3 KB (158261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cc5a3fca9a916acac07d2626f726f26c96dd52a352bef324adda72a622d9300`  
		Last Modified: Tue, 04 Aug 2026 01:49:23 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.19` - unknown; unknown

```console
$ docker pull kibana@sha256:ced675993d1d20a25457be19dafa87763751e0e43a418678b6ab7b3b2bcd2789
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4954922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e164877f8b7073cf22f5d6dc226d363a0fb325b529ead764341697a6030a17`

```dockerfile
```

-	Layers:
	-	`sha256:64fba36e8f735ae38be445aa0fef4c7512197adc927bf360149face01f7510e8`  
		Last Modified: Tue, 04 Aug 2026 01:49:20 GMT  
		Size: 4.9 MB (4913759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f5184b93a88713a0e4404eec925a923ce7b5e13f2697a5b88d392f16ee95cd3`  
		Last Modified: Tue, 04 Aug 2026 01:49:19 GMT  
		Size: 41.2 KB (41163 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.3.8`

```console
$ docker pull kibana@sha256:9bbf99aeaf4933b3894a89921d906cdd24d14301a7d96ca5abfd09c79140e332
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.3.8` - linux; amd64

```console
$ docker pull kibana@sha256:66946c41ec2ead802039f0fb5d05de519e825c362dbfe3c332a2dd5423365cbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.0 MB (466024563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52a7a278ef786edbdb9b5716ebdb8ad3b440cee406066c17086ce20c017a053e`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 29 Jul 2026 15:33:59 GMT
ENV container oci
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:2712bf6adcbfed5a600b822e93b2431cf1da8013a362d751954f4417ddc9cb0f in /      
# Wed, 29 Jul 2026 15:33:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 15:33:59 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:6628822f227400c36a43db1d6feb34b2bb83cd8e625284f06b5597d2d1cfa0a2 in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:6628822f227400c36a43db1d6feb34b2bb83cd8e625284f06b5597d2d1cfa0a2 in /root/buildinfo/      
# Wed, 29 Jul 2026 15:34:00 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T15:33:16Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-29T15:33:16Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785339117"org.opencontainers.image.created=2026-07-29T15:33:16Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Fri, 31 Jul 2026 00:14:09 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 31 Jul 2026 00:14:09 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:22:26 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 31 Jul 2026 00:22:27 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 31 Jul 2026 00:22:27 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Fri, 31 Jul 2026 00:22:27 GMT
RUN fc-cache -v # buildkit
# Fri, 31 Jul 2026 00:22:27 GMT
WORKDIR /usr/share/kibana
# Fri, 31 Jul 2026 00:22:27 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 31 Jul 2026 00:22:27 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 31 Jul 2026 00:22:27 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:22:27 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 31 Jul 2026 00:22:27 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:22:28 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 31 Jul 2026 00:22:29 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 31 Jul 2026 00:22:29 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 31 Jul 2026 00:22:29 GMT
LABEL org.label-schema.build-date=2026-07-15T22:23:34.585Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:23:34.585Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Fri, 31 Jul 2026 00:22:29 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Fri, 31 Jul 2026 00:22:29 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 31 Jul 2026 00:22:29 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 31 Jul 2026 00:22:29 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 31 Jul 2026 00:22:29 GMT
USER 1000
```

-	Layers:
	-	`sha256:fa84e92aded1f99bf9799f6272da6aa325a0ec5833ce54b6067c83c51d373be1`  
		Last Modified: Wed, 29 Jul 2026 16:07:04 GMT  
		Size: 40.7 MB (40700889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63ecc793f9013290dd0711b072bcf8be45d42558a2aecee997c40aea7d52ed4`  
		Last Modified: Fri, 31 Jul 2026 00:23:30 GMT  
		Size: 19.3 MB (19326947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b25969e8247f06723dce72d60a538d3b53114ca3a995c96b212ef05ff30852`  
		Last Modified: Fri, 31 Jul 2026 00:23:37 GMT  
		Size: 389.4 MB (389438305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86d5137ca682ae71d9c25cafc12cc28c60af31c642c7b038a73770771701e69`  
		Last Modified: Fri, 31 Jul 2026 00:23:29 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893a5bc3d79e0e5a8300fdd59b4d4ccb388daa0321d33657c0eb0c8c86c8baa5`  
		Last Modified: Fri, 31 Jul 2026 00:23:30 GMT  
		Size: 16.5 MB (16460477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c67aa1ea2f94ff15d9c4cca6d9140ff40a22ac637020a739142bbf872ad5770`  
		Last Modified: Fri, 31 Jul 2026 00:23:30 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daaaed7c6593ad00c5263649a22d5bba1a1ea8d4bf85ec9ed44550a318be985d`  
		Last Modified: Fri, 31 Jul 2026 00:23:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a4e25764bf91f33c8d6e83bd198a37f724652a4b330472f018bc3e8bb1dd91`  
		Last Modified: Fri, 31 Jul 2026 00:23:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47933df525017cec34dbc1f67c7da7549e55b4671164efba803cae6c1b771c8f`  
		Last Modified: Fri, 31 Jul 2026 00:23:32 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b6ee12688e7c50102e71878c96ec7cf8f8580b36653af4090c64aa8f157d01`  
		Last Modified: Fri, 31 Jul 2026 00:23:33 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15fdb4f1f69b955a47c622309a5eed57224b2d6693b5cfc61c240694b0a0a3dc`  
		Last Modified: Fri, 31 Jul 2026 00:23:33 GMT  
		Size: 74.5 KB (74546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda5533b115224afaf1b6a6df48f3776009c1328800db78846608a7a9a539902`  
		Last Modified: Fri, 31 Jul 2026 00:23:33 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5c57cb336ed48a13e27072a3ce507b821a8fd185a4dd24040f0737bef47e388`  
		Last Modified: Fri, 31 Jul 2026 00:23:34 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.3.8` - unknown; unknown

```console
$ docker pull kibana@sha256:6d8d3c8123302a0bd5ac20e0ae362b8d8344798e6670be81a126be9368bbedbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5809707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e587b259a53355041d3041f90e7fc2de1feef4954ef0dec3c74e84cd7efa018f`

```dockerfile
```

-	Layers:
	-	`sha256:7d747c3f58befeabf619599207311f2b536a38bae3257676f12b94e02e93ee9a`  
		Last Modified: Fri, 31 Jul 2026 00:23:29 GMT  
		Size: 5.8 MB (5766481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd7daab5905e53a83323d3e0af357886267a6688d7106804067fa51054f0528`  
		Last Modified: Fri, 31 Jul 2026 00:23:29 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.3.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:d0d2ff70af0a73063f4a92915f7594505fdad90647c793619a5eabb1c9245b77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **477.0 MB (476956929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844e1f7ad4f3f28b3dbf77e6e4abb9bd4c2411ad914e6c7f92d52d2eaad0a94e`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 29 Jul 2026 15:36:13 GMT
ENV container oci
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:e79037c55caea67c80589bc5c498ecc00baf2b82e3344e06bc5ee039b57b79cb in /      
# Wed, 29 Jul 2026 15:36:14 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 15:36:14 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:517f2664f3696939cbf5526fe39167b1f9602ed288bfd2d17c092a9a6937e54e in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:517f2664f3696939cbf5526fe39167b1f9602ed288bfd2d17c092a9a6937e54e in /root/buildinfo/      
# Wed, 29 Jul 2026 15:36:14 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T15:35:52Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-29T15:35:52Z" "architecture"="aarch64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785339117"org.opencontainers.image.created=2026-07-29T15:35:52Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Fri, 31 Jul 2026 00:17:10 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 31 Jul 2026 00:17:10 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:23:53 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 31 Jul 2026 00:23:54 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 31 Jul 2026 00:23:54 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Fri, 31 Jul 2026 00:23:54 GMT
RUN fc-cache -v # buildkit
# Fri, 31 Jul 2026 00:23:54 GMT
WORKDIR /usr/share/kibana
# Fri, 31 Jul 2026 00:23:54 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 31 Jul 2026 00:23:54 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 31 Jul 2026 00:23:54 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:23:54 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 31 Jul 2026 00:23:54 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:23:55 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 31 Jul 2026 00:23:56 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 31 Jul 2026 00:23:56 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 31 Jul 2026 00:23:56 GMT
LABEL org.label-schema.build-date=2026-07-15T22:23:34.585Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:23:34.585Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Fri, 31 Jul 2026 00:23:56 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Fri, 31 Jul 2026 00:23:56 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 31 Jul 2026 00:23:56 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 31 Jul 2026 00:23:56 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 31 Jul 2026 00:23:56 GMT
USER 1000
```

-	Layers:
	-	`sha256:f72706ee3c4ed7f3012002662319b160e1be4b1d724cbcbdb1344189ada6e8c6`  
		Last Modified: Wed, 29 Jul 2026 16:05:36 GMT  
		Size: 38.8 MB (38838336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afcde23a0dde5f2d8f4ec72b3f63eab1a25b1106c4c77d6679cf9fd8e75094b2`  
		Last Modified: Fri, 31 Jul 2026 00:25:03 GMT  
		Size: 19.3 MB (19283728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87218cdf4c7bd08e726cdf34d71ee152d9a0421918becb815ae34234adf992b7`  
		Last Modified: Fri, 31 Jul 2026 00:25:10 GMT  
		Size: 402.3 MB (402277954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2665bddef5ad4ae9cd982f156d86d8805e86b6d7d3a1ac7fd64ef0e867874cd8`  
		Last Modified: Fri, 31 Jul 2026 00:25:01 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263c7dc8e8e03a1e81b08109ec2682c5b61f99dd6b9a69c17cfe6f40fa1f8853`  
		Last Modified: Fri, 31 Jul 2026 00:25:02 GMT  
		Size: 16.5 MB (16460492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c565f04d9921a6cdd488c2fb85c0f13dcee0e9f62f740c2e7d8b88ffd831b7`  
		Last Modified: Fri, 31 Jul 2026 00:25:03 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01d54561d504a79272d480a1bd9e7f46ef2b71365925ea1568f9e3db37ab722`  
		Last Modified: Fri, 31 Jul 2026 00:25:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4e18efa7ee3e24196fdb5baf92b80b28ddc008f5e3e279cf6bcd18feed1140`  
		Last Modified: Fri, 31 Jul 2026 00:25:04 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae5d83f61065502683d1a2d87560e2ce35481040caa0909ff15be88ec262db58`  
		Last Modified: Fri, 31 Jul 2026 00:25:04 GMT  
		Size: 4.9 KB (4929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae285646a390030ac3c90f0ca03407141687b22d0643d07acc0e8e1f1d8dc595`  
		Last Modified: Fri, 31 Jul 2026 00:25:05 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d034824cc3d89cc3c2df26ad8e204580cca9c8046c48ec76c7b6f11851084a`  
		Last Modified: Fri, 31 Jul 2026 00:25:05 GMT  
		Size: 73.5 KB (73455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e66ad534a6fc11f4202d97bf629c7805675aab01f45ff997cd04deddf563df9`  
		Last Modified: Fri, 31 Jul 2026 00:25:05 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fea5402efe7ed9c6bc5ab1a6fa5db427c5e3bd96093c9b91a980d522a88036a3`  
		Last Modified: Fri, 31 Jul 2026 00:25:06 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.3.8` - unknown; unknown

```console
$ docker pull kibana@sha256:3ac4b3a7898497010d256847b88b34adf9aca45f166775bf20b7c0502e9679f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5806854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17808cdc3487c3c9002b831d65e21eecf3f83d98d8244f0405e2d1cbcffb2bfe`

```dockerfile
```

-	Layers:
	-	`sha256:85d857969e0329f46a79a78ff614f9027f9c69b2de9a3fca839b939c1a85e614`  
		Last Modified: Fri, 31 Jul 2026 00:25:02 GMT  
		Size: 5.8 MB (5763371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d7d501d723f9d3f164ba14302da3acbd509bb4e414d45cf26d84dbb66e9597c`  
		Last Modified: Fri, 31 Jul 2026 00:25:01 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.4`

```console
$ docker pull kibana@sha256:627ee62f385d02ecbece8488ddeccc7b5d525d2904da915f9ff27cc762796539
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.4` - linux; amd64

```console
$ docker pull kibana@sha256:dc4e4af9b59535b1aa696f035bd30b1e11aea067a2b798d40f8e8636fc7bef79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **532.0 MB (532037961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61507da4171d6862c3ee50fa23c3fa3d3dc00e76ca837f0ca0183d8b0393aaea`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 29 Jul 2026 15:33:59 GMT
ENV container oci
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:2712bf6adcbfed5a600b822e93b2431cf1da8013a362d751954f4417ddc9cb0f in /      
# Wed, 29 Jul 2026 15:33:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 15:33:59 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:6628822f227400c36a43db1d6feb34b2bb83cd8e625284f06b5597d2d1cfa0a2 in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:6628822f227400c36a43db1d6feb34b2bb83cd8e625284f06b5597d2d1cfa0a2 in /root/buildinfo/      
# Wed, 29 Jul 2026 15:34:00 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T15:33:16Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-29T15:33:16Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785339117"org.opencontainers.image.created=2026-07-29T15:33:16Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Fri, 31 Jul 2026 00:14:12 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 31 Jul 2026 00:14:12 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:23:14 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 31 Jul 2026 00:23:14 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 31 Jul 2026 00:23:14 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Fri, 31 Jul 2026 00:23:15 GMT
RUN fc-cache -v # buildkit
# Fri, 31 Jul 2026 00:23:15 GMT
WORKDIR /usr/share/kibana
# Fri, 31 Jul 2026 00:23:15 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 31 Jul 2026 00:23:15 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 31 Jul 2026 00:23:15 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:23:15 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 31 Jul 2026 00:23:15 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:23:16 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 31 Jul 2026 00:23:16 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 31 Jul 2026 00:23:17 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 31 Jul 2026 00:23:17 GMT
LABEL org.label-schema.build-date=2026-07-15T16:25:48.957Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T16:25:48.957Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Fri, 31 Jul 2026 00:23:17 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Fri, 31 Jul 2026 00:23:17 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 31 Jul 2026 00:23:17 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 31 Jul 2026 00:23:17 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 31 Jul 2026 00:23:17 GMT
USER 1000
```

-	Layers:
	-	`sha256:fa84e92aded1f99bf9799f6272da6aa325a0ec5833ce54b6067c83c51d373be1`  
		Last Modified: Wed, 29 Jul 2026 16:07:04 GMT  
		Size: 40.7 MB (40700889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869cced1bee49e16c2229404bf6a988ff2bd5793284dc0dc81f21b3e32c7db11`  
		Last Modified: Fri, 31 Jul 2026 00:24:31 GMT  
		Size: 19.3 MB (19326885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c21a01f886f18d24f2b12102049e1562383b12d574bae3f26c692da214c19bb`  
		Last Modified: Fri, 31 Jul 2026 00:24:39 GMT  
		Size: 455.5 MB (455451762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bcdebbbc42deb6e23a048dfefac874c92627e5b3061b8696ea44c48ca8d1e81`  
		Last Modified: Fri, 31 Jul 2026 00:24:30 GMT  
		Size: 9.5 KB (9528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e0efe5312eb86477d8ec6bb4f3c4a0da354d4e14997c6fe60734774c0f9ccf`  
		Last Modified: Fri, 31 Jul 2026 00:24:31 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369e3e8af2b386abd6448eb527ea8a5758377adc90028fb23b50f91d4e9678f0`  
		Last Modified: Fri, 31 Jul 2026 00:24:31 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b95be48cd5dcef51041773789002c9a0399648c36fc9a13e1faef3b1d24209f5`  
		Last Modified: Fri, 31 Jul 2026 00:24:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d3c0f24dd0f7ecb80cfde9ca58f081b2ceb1deef87af73156e1ff012c97e343`  
		Last Modified: Fri, 31 Jul 2026 00:24:33 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58017b4abaebe533bd552ba0abb541af7f97fcc9f515f4cce5006e25f7609f19`  
		Last Modified: Fri, 31 Jul 2026 00:24:33 GMT  
		Size: 4.9 KB (4926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f71868b2709cfb68a66acd3f496a54059411d326457bbf0709eb34a36e0ed986`  
		Last Modified: Fri, 31 Jul 2026 00:24:34 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cefb98af5a66f90f16835dcd720a414cdd08fa65c534c55bf02110f6399d98d2`  
		Last Modified: Fri, 31 Jul 2026 00:24:34 GMT  
		Size: 74.5 KB (74545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:162a5332ea8fee96cf8a7bfa28ffdb3f48045afea0346723daa8bdc8b057f6de`  
		Last Modified: Fri, 31 Jul 2026 00:24:34 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:effacd563c0d21f12fe3539f9d56eba028bf39fba43c3f97860ada07eed46e07`  
		Last Modified: Fri, 31 Jul 2026 00:24:35 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.4` - unknown; unknown

```console
$ docker pull kibana@sha256:dbeb1af4222a2abf6166deee6c3efa0f65a134b5dbc0b0ab5e97fa6c89b7bed7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:096bfa26b950b9d3a06b5b65e8436840ba3db65401b5c8c37438d86995737b3c`

```dockerfile
```

-	Layers:
	-	`sha256:05ee87d4b42419f1f8e025255f3fe4df9fd5e15f7ee386f9f79eadf5be000bb5`  
		Last Modified: Fri, 31 Jul 2026 00:24:30 GMT  
		Size: 5.8 MB (5826244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4afda397980aaf52b053ae4404dd333dc83a97e2acaaea3b68c5300cb647e5c3`  
		Last Modified: Fri, 31 Jul 2026 00:24:30 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.4` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:74ee342e37e0af2f83885487d19bf0c58c29064abab33dfaec28a50ad82614bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **543.1 MB (543066079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27142e5237ac3f6eb27713d60021a0ea8fb1348eaf72750160af3de854c6b55`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 29 Jul 2026 15:36:13 GMT
ENV container oci
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:e79037c55caea67c80589bc5c498ecc00baf2b82e3344e06bc5ee039b57b79cb in /      
# Wed, 29 Jul 2026 15:36:14 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 15:36:14 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:517f2664f3696939cbf5526fe39167b1f9602ed288bfd2d17c092a9a6937e54e in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:517f2664f3696939cbf5526fe39167b1f9602ed288bfd2d17c092a9a6937e54e in /root/buildinfo/      
# Wed, 29 Jul 2026 15:36:14 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T15:35:52Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-29T15:35:52Z" "architecture"="aarch64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785339117"org.opencontainers.image.created=2026-07-29T15:35:52Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Fri, 31 Jul 2026 00:17:09 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 31 Jul 2026 00:17:09 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:24:32 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 31 Jul 2026 00:24:33 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 31 Jul 2026 00:24:33 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Fri, 31 Jul 2026 00:24:33 GMT
RUN fc-cache -v # buildkit
# Fri, 31 Jul 2026 00:24:33 GMT
WORKDIR /usr/share/kibana
# Fri, 31 Jul 2026 00:24:33 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 31 Jul 2026 00:24:33 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 31 Jul 2026 00:24:33 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:24:33 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 31 Jul 2026 00:24:33 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:24:34 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 31 Jul 2026 00:24:35 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 31 Jul 2026 00:24:35 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 31 Jul 2026 00:24:35 GMT
LABEL org.label-schema.build-date=2026-07-15T16:25:48.957Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T16:25:48.957Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Fri, 31 Jul 2026 00:24:35 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Fri, 31 Jul 2026 00:24:35 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 31 Jul 2026 00:24:35 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 31 Jul 2026 00:24:35 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 31 Jul 2026 00:24:35 GMT
USER 1000
```

-	Layers:
	-	`sha256:f72706ee3c4ed7f3012002662319b160e1be4b1d724cbcbdb1344189ada6e8c6`  
		Last Modified: Wed, 29 Jul 2026 16:05:36 GMT  
		Size: 38.8 MB (38838336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf8991c6795e23d99c5fbfd480c9459d1a79ee39a053b04e6bd5471acf97e86`  
		Last Modified: Fri, 31 Jul 2026 00:25:54 GMT  
		Size: 19.3 MB (19283797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79885955769478dcad9572bdd77231068827c4cce4f01a0a5c3f11a482766aa9`  
		Last Modified: Fri, 31 Jul 2026 00:26:02 GMT  
		Size: 468.4 MB (468387052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f3f29ab3259b36f253506a758e1aa90d57e4f990ecf449d009fdf721d0478a9`  
		Last Modified: Fri, 31 Jul 2026 00:25:52 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b15d79f51c755e310820365f5e8123c2640db29f768966cc411667bece669f4b`  
		Last Modified: Fri, 31 Jul 2026 00:25:53 GMT  
		Size: 16.5 MB (16460480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ad7015b5a0aeb8692c2580a0e44108fea3e415a291dd30ee44123dd3234b92`  
		Last Modified: Fri, 31 Jul 2026 00:25:53 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:effe316100fdfe306853997d8f18204730ff9434b06ed8dab6af435a5d7151b7`  
		Last Modified: Fri, 31 Jul 2026 00:25:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9bd5834a80ca994c1b39547ce179d2872fd4b57c93af54ba35ff8271a3d8d8a`  
		Last Modified: Fri, 31 Jul 2026 00:25:55 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfbc06958abf9c245a1ebcfb587c3dc3519a280dfb876036a418f4c266083823`  
		Last Modified: Fri, 31 Jul 2026 00:25:55 GMT  
		Size: 4.9 KB (4925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b8a386c718fcb55ee62ed6b7484ede7595e81020119b1e1c778db4d6b2600c`  
		Last Modified: Fri, 31 Jul 2026 00:25:56 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d255304dea88d5d849db4f9ba9f5bf517fe6d852c4bf3b19214cdbf19d458a`  
		Last Modified: Fri, 31 Jul 2026 00:25:56 GMT  
		Size: 73.5 KB (73453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973b11e4bbb8914faf732b39fbd5bf0afb4881189ad3d7a4a85fdcfdb0f20618`  
		Last Modified: Fri, 31 Jul 2026 00:25:56 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6eafae765f8484b48c853de22befafb273b467a6b8a4135efea979ac9a4ce55`  
		Last Modified: Fri, 31 Jul 2026 00:25:57 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.4` - unknown; unknown

```console
$ docker pull kibana@sha256:1a600e276c5ceced6479780a7de4d084ab971c42b44b0242b47357e5f12d2c12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5866617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:147d5b26bc72558b1cb6286eb60e3fff7e8dc343e049fa1e2fede37beb1efa39`

```dockerfile
```

-	Layers:
	-	`sha256:75b4122ff8188332ea8b0fbd8e0567a92528d869231b7e9046c82433172e4a57`  
		Last Modified: Fri, 31 Jul 2026 00:25:53 GMT  
		Size: 5.8 MB (5823134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d20aaf1d50811e351f2d7819794c1094f71b6375c577c7a606c5d705c374afc`  
		Last Modified: Fri, 31 Jul 2026 00:25:52 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
