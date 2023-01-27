<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cirros`

-	[`cirros:0`](#cirros0)
-	[`cirros:0.6`](#cirros06)
-	[`cirros:0.6.1`](#cirros061)
-	[`cirros:latest`](#cirroslatest)

## `cirros:0`

```console
$ docker pull cirros@sha256:adcefc78e99c1f006edc71da1179df2814de7d522c89d89a7fdf358d0021d07c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `cirros:0` - linux; amd64

```console
$ docker pull cirros@sha256:04469d1f7155e892eaa5cc0d774b4c8f499dd9f1d2df92c91505775b8b975abc
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7415253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdb40efc43d69d1840118638fd91da72607c3125101fb428d4ac30e0a3bc5b1b`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 22 Nov 2022 22:24:57 GMT
ADD file:12aef9d2ac43f48be6b03ab418cb5312e4e7f397d71d610afedfbcd1c2c73650 in / 
# Tue, 22 Nov 2022 22:24:57 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 22 Nov 2022 22:24:58 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 22 Nov 2022 22:24:58 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:d3ba20487232c21211201e5e9726d4bc5ac60d2db08ca089112733699c52a601`  
		Last Modified: Tue, 22 Nov 2022 22:25:09 GMT  
		Size: 7.4 MB (7413828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c3cce1196c79818d788e9ce4c53d60d3129ed4e16923aa1184121b903c1a38`  
		Last Modified: Tue, 22 Nov 2022 22:25:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899be78ec08abb367d05c9296da5f3d5701d8c5bd3653eafab2298ae9d53e067`  
		Last Modified: Tue, 22 Nov 2022 22:25:08 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cirros:0` - linux; arm variant v5

```console
$ docker pull cirros@sha256:8d662cb091c665c434dfe15976b91d747e102ce4977618b19933823540898edb
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6917658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bacaf611de22f74380126e8e3887dcddd5fd9008c5a0b0108604c3fb52a8fd45`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 22 Nov 2022 22:48:24 GMT
ADD file:a7007b63f19798cbc22966ecedc9e89242374a10b1afb98d0a6d3a2c65f1f144 in / 
# Tue, 22 Nov 2022 22:48:25 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 22 Nov 2022 22:48:25 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 22 Nov 2022 22:48:25 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:1b9fe69ed5aa8f1fc5e892a6797855a8e2b287bdeca83678c4baa5ef680ff902`  
		Last Modified: Tue, 22 Nov 2022 22:48:46 GMT  
		Size: 6.9 MB (6916230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d274186ecacfa915baf64c24177f3164b28cc902ccc17f210e958b566b54da`  
		Last Modified: Tue, 22 Nov 2022 22:48:45 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c81ffd16d7ca1c9e962ca4967e1a8031fbc231b42bc74d86a1ff46a98b499be`  
		Last Modified: Tue, 22 Nov 2022 22:48:45 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cirros:0` - linux; arm64 variant v8

```console
$ docker pull cirros@sha256:30db2666166be7fa735adfe4acacc993155fe42d7cb10c71466d041087a1656d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7512652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6de97c6c15f18adf0026a11296814e3d3e8831def6c83ed8d3bdcfcb9b7e74b1`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 22 Nov 2022 22:44:49 GMT
ADD file:c514c5032cd91c1fb91255042fe76fa4ceff872c26b8e0736dc53a404a00ac39 in / 
# Tue, 22 Nov 2022 22:44:50 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 22 Nov 2022 22:44:50 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 22 Nov 2022 22:44:50 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:c8707b44c02a6ce4855dfbf586d6ced951085be6fa4d08f07a7ee2edf4da3ace`  
		Last Modified: Tue, 22 Nov 2022 22:45:00 GMT  
		Size: 7.5 MB (7511226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1d71011505eddfbcdaee10a64041d078488e86d245ff3682e284d7df5aa6c9`  
		Last Modified: Tue, 22 Nov 2022 22:44:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55391f8c263fc986ed0bb96c40ee7365b364e515a22c4411706348d64aa929d`  
		Last Modified: Tue, 22 Nov 2022 22:44:59 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cirros:0` - linux; ppc64le

```console
$ docker pull cirros@sha256:bf0de90a3e2b1ea0fdf252cf76a6310556f89e00fa22f15d361ad0695a70ab35
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7893520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a29a37940a400355fccefeb6424b3157ae269ea3cfb780b3c66889f29aa5027`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 22 Nov 2022 22:24:26 GMT
ADD file:e7ac3506307e02ffe6fe2dc4aae3c3c2b4670caf39f27d546b7aafa56804d15d in / 
# Tue, 22 Nov 2022 22:24:28 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 22 Nov 2022 22:24:30 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 22 Nov 2022 22:24:30 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:8ff514ef264d54b0769c5c9d8694bf3b3205f7ebc8dab4684c4c01b065317360`  
		Last Modified: Tue, 22 Nov 2022 22:24:50 GMT  
		Size: 7.9 MB (7892088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211d8e8a50a26a9eb56f1a25726b335406277d20936cfb4f70d395d526ee4a4e`  
		Last Modified: Tue, 22 Nov 2022 22:24:48 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20cf7ce7547c1821bda40130026988eeb9e996599b347a0f91335c72194ff52`  
		Last Modified: Tue, 22 Nov 2022 22:24:48 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cirros:0.6`

```console
$ docker pull cirros@sha256:adcefc78e99c1f006edc71da1179df2814de7d522c89d89a7fdf358d0021d07c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `cirros:0.6` - linux; amd64

```console
$ docker pull cirros@sha256:04469d1f7155e892eaa5cc0d774b4c8f499dd9f1d2df92c91505775b8b975abc
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7415253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdb40efc43d69d1840118638fd91da72607c3125101fb428d4ac30e0a3bc5b1b`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 22 Nov 2022 22:24:57 GMT
ADD file:12aef9d2ac43f48be6b03ab418cb5312e4e7f397d71d610afedfbcd1c2c73650 in / 
# Tue, 22 Nov 2022 22:24:57 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 22 Nov 2022 22:24:58 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 22 Nov 2022 22:24:58 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:d3ba20487232c21211201e5e9726d4bc5ac60d2db08ca089112733699c52a601`  
		Last Modified: Tue, 22 Nov 2022 22:25:09 GMT  
		Size: 7.4 MB (7413828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c3cce1196c79818d788e9ce4c53d60d3129ed4e16923aa1184121b903c1a38`  
		Last Modified: Tue, 22 Nov 2022 22:25:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899be78ec08abb367d05c9296da5f3d5701d8c5bd3653eafab2298ae9d53e067`  
		Last Modified: Tue, 22 Nov 2022 22:25:08 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cirros:0.6` - linux; arm variant v5

```console
$ docker pull cirros@sha256:8d662cb091c665c434dfe15976b91d747e102ce4977618b19933823540898edb
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6917658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bacaf611de22f74380126e8e3887dcddd5fd9008c5a0b0108604c3fb52a8fd45`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 22 Nov 2022 22:48:24 GMT
ADD file:a7007b63f19798cbc22966ecedc9e89242374a10b1afb98d0a6d3a2c65f1f144 in / 
# Tue, 22 Nov 2022 22:48:25 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 22 Nov 2022 22:48:25 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 22 Nov 2022 22:48:25 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:1b9fe69ed5aa8f1fc5e892a6797855a8e2b287bdeca83678c4baa5ef680ff902`  
		Last Modified: Tue, 22 Nov 2022 22:48:46 GMT  
		Size: 6.9 MB (6916230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d274186ecacfa915baf64c24177f3164b28cc902ccc17f210e958b566b54da`  
		Last Modified: Tue, 22 Nov 2022 22:48:45 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c81ffd16d7ca1c9e962ca4967e1a8031fbc231b42bc74d86a1ff46a98b499be`  
		Last Modified: Tue, 22 Nov 2022 22:48:45 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cirros:0.6` - linux; arm64 variant v8

```console
$ docker pull cirros@sha256:30db2666166be7fa735adfe4acacc993155fe42d7cb10c71466d041087a1656d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7512652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6de97c6c15f18adf0026a11296814e3d3e8831def6c83ed8d3bdcfcb9b7e74b1`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 22 Nov 2022 22:44:49 GMT
ADD file:c514c5032cd91c1fb91255042fe76fa4ceff872c26b8e0736dc53a404a00ac39 in / 
# Tue, 22 Nov 2022 22:44:50 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 22 Nov 2022 22:44:50 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 22 Nov 2022 22:44:50 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:c8707b44c02a6ce4855dfbf586d6ced951085be6fa4d08f07a7ee2edf4da3ace`  
		Last Modified: Tue, 22 Nov 2022 22:45:00 GMT  
		Size: 7.5 MB (7511226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1d71011505eddfbcdaee10a64041d078488e86d245ff3682e284d7df5aa6c9`  
		Last Modified: Tue, 22 Nov 2022 22:44:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55391f8c263fc986ed0bb96c40ee7365b364e515a22c4411706348d64aa929d`  
		Last Modified: Tue, 22 Nov 2022 22:44:59 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cirros:0.6` - linux; ppc64le

```console
$ docker pull cirros@sha256:bf0de90a3e2b1ea0fdf252cf76a6310556f89e00fa22f15d361ad0695a70ab35
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7893520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a29a37940a400355fccefeb6424b3157ae269ea3cfb780b3c66889f29aa5027`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 22 Nov 2022 22:24:26 GMT
ADD file:e7ac3506307e02ffe6fe2dc4aae3c3c2b4670caf39f27d546b7aafa56804d15d in / 
# Tue, 22 Nov 2022 22:24:28 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 22 Nov 2022 22:24:30 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 22 Nov 2022 22:24:30 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:8ff514ef264d54b0769c5c9d8694bf3b3205f7ebc8dab4684c4c01b065317360`  
		Last Modified: Tue, 22 Nov 2022 22:24:50 GMT  
		Size: 7.9 MB (7892088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211d8e8a50a26a9eb56f1a25726b335406277d20936cfb4f70d395d526ee4a4e`  
		Last Modified: Tue, 22 Nov 2022 22:24:48 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20cf7ce7547c1821bda40130026988eeb9e996599b347a0f91335c72194ff52`  
		Last Modified: Tue, 22 Nov 2022 22:24:48 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cirros:0.6.1`

```console
$ docker pull cirros@sha256:adcefc78e99c1f006edc71da1179df2814de7d522c89d89a7fdf358d0021d07c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `cirros:0.6.1` - linux; amd64

```console
$ docker pull cirros@sha256:04469d1f7155e892eaa5cc0d774b4c8f499dd9f1d2df92c91505775b8b975abc
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7415253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdb40efc43d69d1840118638fd91da72607c3125101fb428d4ac30e0a3bc5b1b`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 22 Nov 2022 22:24:57 GMT
ADD file:12aef9d2ac43f48be6b03ab418cb5312e4e7f397d71d610afedfbcd1c2c73650 in / 
# Tue, 22 Nov 2022 22:24:57 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 22 Nov 2022 22:24:58 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 22 Nov 2022 22:24:58 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:d3ba20487232c21211201e5e9726d4bc5ac60d2db08ca089112733699c52a601`  
		Last Modified: Tue, 22 Nov 2022 22:25:09 GMT  
		Size: 7.4 MB (7413828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c3cce1196c79818d788e9ce4c53d60d3129ed4e16923aa1184121b903c1a38`  
		Last Modified: Tue, 22 Nov 2022 22:25:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899be78ec08abb367d05c9296da5f3d5701d8c5bd3653eafab2298ae9d53e067`  
		Last Modified: Tue, 22 Nov 2022 22:25:08 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cirros:0.6.1` - linux; arm variant v5

```console
$ docker pull cirros@sha256:8d662cb091c665c434dfe15976b91d747e102ce4977618b19933823540898edb
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6917658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bacaf611de22f74380126e8e3887dcddd5fd9008c5a0b0108604c3fb52a8fd45`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 22 Nov 2022 22:48:24 GMT
ADD file:a7007b63f19798cbc22966ecedc9e89242374a10b1afb98d0a6d3a2c65f1f144 in / 
# Tue, 22 Nov 2022 22:48:25 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 22 Nov 2022 22:48:25 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 22 Nov 2022 22:48:25 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:1b9fe69ed5aa8f1fc5e892a6797855a8e2b287bdeca83678c4baa5ef680ff902`  
		Last Modified: Tue, 22 Nov 2022 22:48:46 GMT  
		Size: 6.9 MB (6916230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d274186ecacfa915baf64c24177f3164b28cc902ccc17f210e958b566b54da`  
		Last Modified: Tue, 22 Nov 2022 22:48:45 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c81ffd16d7ca1c9e962ca4967e1a8031fbc231b42bc74d86a1ff46a98b499be`  
		Last Modified: Tue, 22 Nov 2022 22:48:45 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cirros:0.6.1` - linux; arm64 variant v8

```console
$ docker pull cirros@sha256:30db2666166be7fa735adfe4acacc993155fe42d7cb10c71466d041087a1656d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7512652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6de97c6c15f18adf0026a11296814e3d3e8831def6c83ed8d3bdcfcb9b7e74b1`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 22 Nov 2022 22:44:49 GMT
ADD file:c514c5032cd91c1fb91255042fe76fa4ceff872c26b8e0736dc53a404a00ac39 in / 
# Tue, 22 Nov 2022 22:44:50 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 22 Nov 2022 22:44:50 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 22 Nov 2022 22:44:50 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:c8707b44c02a6ce4855dfbf586d6ced951085be6fa4d08f07a7ee2edf4da3ace`  
		Last Modified: Tue, 22 Nov 2022 22:45:00 GMT  
		Size: 7.5 MB (7511226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1d71011505eddfbcdaee10a64041d078488e86d245ff3682e284d7df5aa6c9`  
		Last Modified: Tue, 22 Nov 2022 22:44:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55391f8c263fc986ed0bb96c40ee7365b364e515a22c4411706348d64aa929d`  
		Last Modified: Tue, 22 Nov 2022 22:44:59 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cirros:0.6.1` - linux; ppc64le

```console
$ docker pull cirros@sha256:bf0de90a3e2b1ea0fdf252cf76a6310556f89e00fa22f15d361ad0695a70ab35
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7893520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a29a37940a400355fccefeb6424b3157ae269ea3cfb780b3c66889f29aa5027`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 22 Nov 2022 22:24:26 GMT
ADD file:e7ac3506307e02ffe6fe2dc4aae3c3c2b4670caf39f27d546b7aafa56804d15d in / 
# Tue, 22 Nov 2022 22:24:28 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 22 Nov 2022 22:24:30 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 22 Nov 2022 22:24:30 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:8ff514ef264d54b0769c5c9d8694bf3b3205f7ebc8dab4684c4c01b065317360`  
		Last Modified: Tue, 22 Nov 2022 22:24:50 GMT  
		Size: 7.9 MB (7892088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211d8e8a50a26a9eb56f1a25726b335406277d20936cfb4f70d395d526ee4a4e`  
		Last Modified: Tue, 22 Nov 2022 22:24:48 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20cf7ce7547c1821bda40130026988eeb9e996599b347a0f91335c72194ff52`  
		Last Modified: Tue, 22 Nov 2022 22:24:48 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cirros:latest`

```console
$ docker pull cirros@sha256:adcefc78e99c1f006edc71da1179df2814de7d522c89d89a7fdf358d0021d07c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `cirros:latest` - linux; amd64

```console
$ docker pull cirros@sha256:04469d1f7155e892eaa5cc0d774b4c8f499dd9f1d2df92c91505775b8b975abc
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7415253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdb40efc43d69d1840118638fd91da72607c3125101fb428d4ac30e0a3bc5b1b`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 22 Nov 2022 22:24:57 GMT
ADD file:12aef9d2ac43f48be6b03ab418cb5312e4e7f397d71d610afedfbcd1c2c73650 in / 
# Tue, 22 Nov 2022 22:24:57 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 22 Nov 2022 22:24:58 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 22 Nov 2022 22:24:58 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:d3ba20487232c21211201e5e9726d4bc5ac60d2db08ca089112733699c52a601`  
		Last Modified: Tue, 22 Nov 2022 22:25:09 GMT  
		Size: 7.4 MB (7413828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c3cce1196c79818d788e9ce4c53d60d3129ed4e16923aa1184121b903c1a38`  
		Last Modified: Tue, 22 Nov 2022 22:25:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899be78ec08abb367d05c9296da5f3d5701d8c5bd3653eafab2298ae9d53e067`  
		Last Modified: Tue, 22 Nov 2022 22:25:08 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cirros:latest` - linux; arm variant v5

```console
$ docker pull cirros@sha256:8d662cb091c665c434dfe15976b91d747e102ce4977618b19933823540898edb
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6917658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bacaf611de22f74380126e8e3887dcddd5fd9008c5a0b0108604c3fb52a8fd45`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 22 Nov 2022 22:48:24 GMT
ADD file:a7007b63f19798cbc22966ecedc9e89242374a10b1afb98d0a6d3a2c65f1f144 in / 
# Tue, 22 Nov 2022 22:48:25 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 22 Nov 2022 22:48:25 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 22 Nov 2022 22:48:25 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:1b9fe69ed5aa8f1fc5e892a6797855a8e2b287bdeca83678c4baa5ef680ff902`  
		Last Modified: Tue, 22 Nov 2022 22:48:46 GMT  
		Size: 6.9 MB (6916230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d274186ecacfa915baf64c24177f3164b28cc902ccc17f210e958b566b54da`  
		Last Modified: Tue, 22 Nov 2022 22:48:45 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c81ffd16d7ca1c9e962ca4967e1a8031fbc231b42bc74d86a1ff46a98b499be`  
		Last Modified: Tue, 22 Nov 2022 22:48:45 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cirros:latest` - linux; arm64 variant v8

```console
$ docker pull cirros@sha256:30db2666166be7fa735adfe4acacc993155fe42d7cb10c71466d041087a1656d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7512652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6de97c6c15f18adf0026a11296814e3d3e8831def6c83ed8d3bdcfcb9b7e74b1`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 22 Nov 2022 22:44:49 GMT
ADD file:c514c5032cd91c1fb91255042fe76fa4ceff872c26b8e0736dc53a404a00ac39 in / 
# Tue, 22 Nov 2022 22:44:50 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 22 Nov 2022 22:44:50 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 22 Nov 2022 22:44:50 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:c8707b44c02a6ce4855dfbf586d6ced951085be6fa4d08f07a7ee2edf4da3ace`  
		Last Modified: Tue, 22 Nov 2022 22:45:00 GMT  
		Size: 7.5 MB (7511226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1d71011505eddfbcdaee10a64041d078488e86d245ff3682e284d7df5aa6c9`  
		Last Modified: Tue, 22 Nov 2022 22:44:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55391f8c263fc986ed0bb96c40ee7365b364e515a22c4411706348d64aa929d`  
		Last Modified: Tue, 22 Nov 2022 22:44:59 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cirros:latest` - linux; ppc64le

```console
$ docker pull cirros@sha256:bf0de90a3e2b1ea0fdf252cf76a6310556f89e00fa22f15d361ad0695a70ab35
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7893520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a29a37940a400355fccefeb6424b3157ae269ea3cfb780b3c66889f29aa5027`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Tue, 22 Nov 2022 22:24:26 GMT
ADD file:e7ac3506307e02ffe6fe2dc4aae3c3c2b4670caf39f27d546b7aafa56804d15d in / 
# Tue, 22 Nov 2022 22:24:28 GMT
RUN rm /etc/rc3.d/S40-network
# Tue, 22 Nov 2022 22:24:30 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Tue, 22 Nov 2022 22:24:30 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:8ff514ef264d54b0769c5c9d8694bf3b3205f7ebc8dab4684c4c01b065317360`  
		Last Modified: Tue, 22 Nov 2022 22:24:50 GMT  
		Size: 7.9 MB (7892088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211d8e8a50a26a9eb56f1a25726b335406277d20936cfb4f70d395d526ee4a4e`  
		Last Modified: Tue, 22 Nov 2022 22:24:48 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20cf7ce7547c1821bda40130026988eeb9e996599b347a0f91335c72194ff52`  
		Last Modified: Tue, 22 Nov 2022 22:24:48 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
